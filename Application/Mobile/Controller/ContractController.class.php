<?php

namespace Mobile\Controller;

class ContractController extends MobileController
{
	protected function _initialize()
	{
		parent::_initialize();
		$allow_action = array("index", "creatorder", "ty_creatorder", "get_maket_api", "ctbill", "cbillinfo", "gethyorder", "get_tyhyorder", "cbillinfo_ty", "get_tyhyorder_one", "get_hyorder_one");
		if (!in_array(ACTION_NAME, $allow_action)) {
			$this->error(L("非法操作"));
		}
	}

	//Trải nghiệm đếm ngược hợp đồng
	public function get_tyhyorder_one()
	{
		$id = trim(I('post.oid'));
		$info = M("tyhyorder")->where(array('id' => $id))->field("id,buytime,time,status,coinname,selltime,is_win,ploss")->find();
		if (!empty($info)) {
			if ($info['status'] == 1) {
				$alltime = $info['time'] * 60;
				$endtime = strtotime($info['selltime']);
				$t = $endtime -  time();
				if ($t <= 0) {
					//Thể hiện giải quyết
					$data['statusstr'] = '<span style="font-size:16px;font-weight:bold;">' . L("正在结算中") . '...</span>';
					$data['code'] = 2;
					$this->ajaxReturn($data);
				} else {
					//Nhận đơn giá của cặp giao dịch hiện tại
					$coinarr = explode('/', $info['coinname']);
					$symbol = strtolower($coinarr[0] . $coinarr[1]);
					$coinapi = "https://api.huobi.pro/market/history/kline?period=1day&size=1&symbol=" . $symbol;
					$result = $this->get_maket_api($coinapi);
					$price_arr = $result['data'][0];
					$close = $price_arr['close']; //Giá hiện tại

					$data['code'] = 1;
					$data['time'] = $t;
					$data['timer_newprice'] = $close;
					$this->ajaxReturn($data);
				}
			} else {
				//Nếu nó có nghĩa là nó đã được giải quyết, nó có thể được hiển thị
				if ($info['is_win'] == 1) {
					$data['statusstr'] = '<span style="font-size:24px;font-weight:bold;color:green;">+' . $info['ploss'] . '</span>';
				} elseif ($info['is_win'] == 2) {
					$data['statusstr'] = '<span style="font-size:24px;font-weight:bold;color:red;">-' . $info['ploss'] . '</span>';
				}

				$data['code'] = 2;
				$this->ajaxReturn($data);
			}
		} else {
			$this->ajaxReturn(['code' => 0]);
		}
	}


	//Đếm ngược
	public function get_hyorder_one()
	{
		$id = trim(I('post.oid'));
		$info = M("hyorder")->where(array('id' => $id))->field("id,buytime,time,status,coinname,selltime,is_win,ploss")->find();
		$data['clear'] = 0;
		if (!empty($info)) {
			if ($info['status'] == 1) {

				$alltime = $info['time'] * 60;
				$endtime = strtotime($info['selltime']);
				$t = $endtime -  time();
				if ($t <= 0) {
					//Thể hiện giải quyết
					$data['statusstr'] = '<span style="font-size:16px;font-weight:bold;">' . L("正在结算中") . '...</span>';
					$data['code'] = 2;
					$this->ajaxReturn($data);
				} else {
					//Nhận đơn giá của cặp giao dịch hiện tại
					$coinarr = explode('/', $info['coinname']);
					$symbol = strtolower($coinarr[0] . $coinarr[1]);
					$coinapi = "https://api.huobi.pro/market/history/kline?period=1day&size=1&symbol=" . $symbol;
					$result = $this->get_maket_api($coinapi);
					$price_arr = $result['data'][0];
					$close = $price_arr['close']; //现价

					$data['code'] = 1;
					$data['time'] = $t;
					$data['timer_newprice'] = $close;
					$this->ajaxReturn($data);
				}
			} else {
				//表示已经结算，则显示盈亏即可
				if ($info['is_win'] == 1) {
					$data['statusstr'] = '<span style="font-size:24px;font-weight:bold;color:green;">+' . $info['ploss'] . '</span>';
				} elseif ($info['is_win'] == 2) {
					$data['statusstr'] = '<span style="font-size:24px;font-weight:bold;color:red;">-' . $info['ploss'] . '</span>';
				}

				$data['code'] = 2;
				$data['clear'] = 1;
				$this->ajaxReturn($data);
			}
		} else {
			$this->ajaxReturn(['code' => 0]);
		}
	}

	//Nhận hồ sơ hợp đồng trải nghiệm
	public function get_tyhyorder()
	{
		$uid = userid();
		$list = M("tyhyorder")->where(array('uid' => $uid))->field("id,num,coinname,status,buytime,selltime,buyprice,time")->order("id desc")->select();
		$data = array();
		foreach ($list as $k => $v) {
			$data[$k]['coinanme'] = $v['coinname'];
			$data[$k]['num'] = $v['num'];
			if ($v['status'] == 1) {
				$data[$k]['statusstr'] = L("待结算");
			} elseif ($v['status'] == 2) {
				$data[$k]['statusstr'] = L("已结算");
			} elseif ($v['status'] == 3) {
				$data[$k]['statusstr'] = L("无效结算");
			}
			$data[$k]['buyprice'] = $v['buyprice'];
			$data[$k]['buytime'] = date("m-d H:i", strtotime($v['buytime']));

			$alltime = $v['time'] * 60;
			$endtime = strtotime($v['selltime']);
			$t = $endtime -  time();
			if ($t <= 0) {
				$t = 0;
			}
			$bl = round($t / $alltime  * 100);
			if ($bl <= 0) {
				$bl = 0;
			}
			$data[$k]['bl'] = $bl . "%";
			$data[$k]['t'] = $t;
			$data[$k]['href'] = U('Contract/cbillinfo_ty') . "?bid=" . $v['id'];
		}

		$this->ajaxReturn(['code' => 1, 'data' => $data]);
	}



	//Nhận hồ sơ hợp đồng
	public function gethyorder()
	{
		$uid = userid();
		$list = M("hyorder")->where(array('uid' => $uid))->field("id,num,coinname,status,buytime,selltime,buyprice,sellprice,time,hyzd,is_win,ploss")->order("id desc")->select();
		$data = array();
		foreach ($list as $k => $v) {
			$data[$k]['coinanme'] = $v['coinname'];
			$data[$k]['num'] = $v['num'];
			if ($v['status'] == 1) {
				$data[$k]['statusstr'] = L("待结算");
				$data[$k]['fcolr'] = '#f5465c';
			} elseif ($v['status'] == 2) {
				$data[$k]['statusstr'] = L("已结算");
				$data[$k]['fcolr'] = '#A9AEB8';
			} elseif ($v['status'] == 3) {
				$data[$k]['statusstr'] = L("无效结算");
				$data[$k]['fcolr'] = '#f5465c';
			}

			if ($v['hyzd'] == 1) {
				$data[$k]['hyzdstr'] = L("买涨");
				$data[$k]['hyzdcolor'] = '#0ecb81';
			} else {
				$data[$k]['hyzdstr'] = L("买跌");
				$data[$k]['hyzdcolor'] = '#f5465c';
			}


			$data[$k]['buyprice'] = $v['buyprice'];
			$data[$k]['buytime'] = date("m-d H:i", strtotime($v['buytime']));
			$data[$k]['sellprice'] = $v['sellprice'];
			$data[$k]['selltime'] = date("m-d H:i", strtotime($v['selltime']));
			$alltime = $v['time'] * 60;
			$data[$k]['is_win'] = $v['is_win'];
			$data[$k]['ploss'] = $v['ploss'];
			$endtime = strtotime($v['selltime']);
			$t = $endtime -  time();
			if ($t <= 0) {
				$t = 0;
			}
			$bl = round($t / $alltime  * 100);
			if ($bl <= 0) {
				$bl = 0;
			}
			$data[$k]['bl'] = $bl . "%";
			$data[$k]['t'] = $t;
			$data[$k]['href'] = U('Contract/cbillinfo') . "?bid=" . $v['id'];
		}
		$this->ajaxReturn(['code' => 1, 'data' => $data]);
	}

	//Mua chi tiết hợp đồng
	public function cbillinfo()
	{
		$bid = trim(I('get.bid'));
		if ($bid <= 0) {
			$this->redirect('Contract/ctbill');
		}
		$uid = userid();
		$info = M("hyorder")->where(array('uid' => $uid, 'id' => $bid))->find();
		$this->assign('info', $info);
		$this->display();
	}

	//Kinh nghiệm chi tiết hợp đồng
	public function cbillinfo_ty()
	{
		$bid = trim(I('get.bid'));
		if ($bid <= 0) {
			$this->redirect('Contract/ctbill');
		}
		$uid = userid();
		$info = M("tyhyorder")->where(array('uid' => $uid, 'id' => $bid))->find();
		$this->assign('info', $info);
		$this->display();
	}

	//Hợp đồng mua hồ sơ
	public function ctbill()
	{
		$uid = userid();
		if ($uid <= 0) {
			$this->redirect('Login/index');
		}
		$iframeid = trim(I('get.iframeid', null));
		$fields = "num,coinname,buytime,buyprice,time,status,id";
		$hylist = M("hyorder")->where(array('uid' => $uid))->field($fields)->order("id desc")->limit(20)->select();
		$this->assign("list", $hylist);
		$this->assign("iframeid", $iframeid);
		$this->display();
	}

	//Nhận dữ liệu thị trường
	public function get_maket_api($api)
	{
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
		curl_setopt($ch, CURLOPT_URL, $api);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
		$result = json_decode(curl_exec($ch), true);
		return $result;
	}

	//Hợp đồng thứ hai
	public function ty_creatorder()
	{
		if ($_POST) {
			$uid = userid();
			$uinfo = M("user")->where(array('id' => $uid))->field("id,username,money,rzstatus,invit_1")->find();
			if (empty($uinfo)) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请先登陆')]);
			}

			if ($uinfo['rzstatus'] != 2) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请先完成实名认证')]);
			}

			$puid = $uinfo['invit_1'];
			$puser = M("user")->where(array('id' => $puid))->field("invit")->find();


			$ctime = trim(I('post.ctime'));
			if ($ctime <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请选择结算时间')]);
			}
			$ctzed = trim(I('post.ctzed'));
			if ($ctzed <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请选择投资额度')]);
			}
			$ccoinname = trim(I('post.ccoinname'));
			if ($ccoinname == '') {
				$this->ajaxReturn(['code' => 0, 'msg' => L('缺少重要参数')]);
			}
			$ctzfx = trim(I('post.ctzfx'));
			if ($ctzfx <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('缺少重要参数')]);
			}
			$cykbl = trim(I('post.cykbl'));
			if ($ctzfx <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('缺少重要参数')]);
			}

			//获取会员资产
			//$minfo = M("user_coin")->where(array('userid'=>$uid))->find();
			$usdtnum = $uinfo['money'];

			//获取合约手续费比例
			$setting = M("hysetting")->where(array('id' => 1))->field("hy_sxf,hy_min")->find();

			$hymin = $setting['hy_min'];
			if ($hymin > $ctzed) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('不能小于最低投资额度')]);
			}

			$sxf = $setting['hy_sxf'];
			$tmoney = $ctzed + $ctzed * $sxf / 100;
			if ($tmoney > $usdtnum) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('体验金余额不足')]);
			}


			//获取当前交易对的单价
			$coinarr = explode('/', $ccoinname);
			$symbol = strtolower($coinarr[0] . $coinarr[1]);
			$coinapi = "https://api.huobi.pro/market/history/kline?period=1day&size=1&symbol=" . $symbol;
			$result = $this->get_maket_api($coinapi);
			$price_arr = $result['data'][0];
			$close = $price_arr['close']; //现价

			//创建订单
			$odata['uid'] = $uid;
			$odata['username'] = $uinfo['username'];
			$odata['num'] = $ctzed;
			$odata['hybl'] = $cykbl;
			$odata['hyzd'] = $ctzfx;
			$odata['coinname'] = $ccoinname;
			$odata['status'] = 1;
			$odata['is_win'] = 0;
			$odata['buytime'] = date("Y-m-d H:i:s", time());
			$odata['selltime'] = date("Y-m-d H:i:s", (time() + $ctime * 60));
			$odata['intselltime'] = time() + $ctime * 60;
			$odata['buyprice'] = $close;
			$odata['sellprice'] = '';
			$odata['ploss'] = 0;
			$odata['time'] = $ctime;
			$odata['kongyk'] = 0;
			if ($puser['invit'] == '') {
				$puser['invit'] = 0;
			}
			$odata['invit'] = $puser['invit'];

			$order = M("tyhyorder")->add($odata);
			//Khấu trừ kinh nghiệm vàng
			$decre = M("user")->where(array('id' => $uid))->setDec('money', $tmoney);


			//创建财务日志
			// $bill['uid'] = $uid;
			// $bill['username'] = $uinfo['username'];
			// $bill['num'] = $ctzed;
			// $bill['coinname'] = "usdt";
			// $bill['afternum'] = $minfo['usdt'] - $ctzed;
			// $bill['type'] = 3;
			// $bill['addtime'] = date("Y-m-d H:i:s",time());
			// $bill['st'] = 2;
			// $bill['remark'] = L('购买').$ccoinname.L('秒合约');
			// $billre = M("bill")->add($bill);
			if ($order && $decre) {

				$orderinfo = M("tyhyorder")->where(array('id' => $order))->field("id,hyzd,coinname,buyprice,time,num")->find();

				$ajax['code'] = 1;
				$ajax['id'] = $orderinfo['id'];
				if ($orderinfo['hyzd'] == 1) {
					$ajax['timer_type'] = '<span style="color:green;font-weight:bold;">' . L("买涨") . '</span>';
				} else {
					$ajax['timer_type'] = '<span style="color:red;font-weight:bold;">' . L("买跌") . '</span>';
				}
				$ajax['coinname'] = $orderinfo['coinname'];
				$ajax['buyprice'] = $orderinfo['buyprice'];
				$ajax['time'] = $orderinfo['time'] * 60;
				$ajax['timer_newprice'] = $close;
				$ajax['timer_buynum'] = $orderinfo['num'];
				$ajax['timer_buyprice'] = $orderinfo['buyprice'];
				$ajax['hyzd'] = $orderinfo['hyzd'];

				$this->ajaxReturn($ajax);
			} else {
				$this->ajaxReturn(['code' => 0, 'msg' => L('体验订单建仓失败')]);
			}
		} else {
			$this->ajaxReturn(['code' => 0, 'msg' => L('网络错误')]);
		}
	}

	//Hợp đồng thứ hai
	public function creatorder()
	{
		if ($_POST) {
			$uid = userid();
			$uinfo = M("user")->where(array('id' => $uid))->field("id,username,rzstatus,invit_1,buy_on")->find();
			if (empty($uinfo)) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请先登陆')]);
			}

			if ($uinfo['rzstatus'] != 2) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请先完成实名认证')]);
			}
			if ($uinfo['buy_on'] == "2") {
				$this->ajaxReturn(['code' => 0, 'msg' => L('您的账户已被禁止交易，请联系客服')]);
			}
			$puid = $uinfo['invit_1'];
			$puser = M("user")->where(array('id' => $puid))->field("invit")->find();


			$ctime = trim(I('post.ctime'));
			$ctime = intval($ctime) / 60;
			if ($ctime <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请选择结算时间')]);
			}
			$ctzed = trim(I('post.ctzed'));
			if ($ctzed <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('请选择投资额度')]);
			}
			$ccoinname = trim(I('post.ccoinname'));
			if ($ccoinname == '') {
				$this->ajaxReturn(['code' => 0, 'msg' => L('缺少重要参数')]);
			}
			$ctzfx = trim(I('post.ctzfx'));
			if ($ctzfx <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('缺少重要参数')]);
			}
			$cykbl = trim(I('post.cykbl'));
			if ($ctzfx <= 0) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('缺少重要参数')]);
			}

			//获取会员资产
			$minfo = M("user_coin")->where(array('userid' => $uid))->find();
			$usdtnum = $minfo['usdt'];

			//Nhận tỷ lệ phí hợp đồng
			$setting = M("hysetting")->where(array('id' => 1))->field("hy_sxf,hy_min")->find();

			$hymin = $setting['hy_min'];
			if ($hymin > $ctzed) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('不能小于最低投资额度')]);
			}

			$sxf = $setting['hy_sxf'];
			$tmoney = $ctzed + $ctzed * $sxf / 100;
			if ($tmoney > $usdtnum) {
				$this->ajaxReturn(['code' => 0, 'msg' => L('USDT余额不足')]);
			}


			$yu_money = M("user_coin")->where(array('userid' => $uid))->find();

			//Nhận đơn giá của cặp giao dịch hiện tại
			$coinarr = explode('/', $ccoinname);
			$symbol = strtolower($coinarr[0] . $coinarr[1]);
			$coinapi = "https://api.huobi.pro/market/history/kline?period=1day&size=1&symbol=" . $symbol;
			$result = $this->get_maket_api($coinapi);
			$price_arr = $result['data'][0];
			$close = $price_arr['close']; //Giá hiện tại

			//Tạo một đơn đặt hàng
			$odata['uid'] = $uid;
			$odata['username'] = $uinfo['username'];
			$odata['num'] = $ctzed;
			$odata['hybl'] = $cykbl;
			$odata['hyzd'] = $ctzfx;
			$odata['buy_orblance'] = $yu_money['usdt'] - $tmoney;
			$odata['coinname'] = $ccoinname;
			$odata['status'] = 1;
			$odata['is_win'] = 0;
			$odata['buytime'] = date("Y-m-d H:i:s", time());
			$odata['selltime'] = date("Y-m-d H:i:s", (time() + $ctime * 60));
			$odata['intselltime'] = time() + $ctime * 60;
			$odata['buyprice'] = $close;
			$odata['sellprice'] = '';
			$odata['ploss'] = 0;
			$odata['time'] = $ctime;
			$odata['kongyk'] = 0;
			if ($puser['invit'] == '') {
				$puser['invit'] = 0;
			}
			$odata['invit'] = $puser['invit'];

			$order = M("hyorder")->add($odata);
			//Khấu trừ hạn ngạch USDT
			$decre = M("user_coin")->where(array('userid' => $uid))->setDec('usdt', $tmoney);
			//Tạo nhật ký tài chính
			$bill['uid'] = $uid;
			$bill['username'] = $uinfo['username'];
			$bill['num'] = $ctzed;
			$bill['coinname'] = "usdt";
			$bill['afternum'] = $minfo['usdt'] - $ctzed;
			$bill['type'] = 3;
			$bill['addtime'] = date("Y-m-d H:i:s", time());
			$bill['st'] = 2;
			$bill['remark'] = L('购买') . $ccoinname . L('秒合约');
			$billre = M("bill")->add($bill);
			if ($order && $decre && $billre) {

				$orderinfo = M("hyorder")->where(array('id' => $order))->field("id,hyzd,coinname,buyprice,time,num")->find();

				$ajax['code'] = 1;
				$ajax['id'] = $orderinfo['id'];
				if ($orderinfo['hyzd'] == 1) {
					$ajax['timer_type'] = '<span style="color:green;font-weight:bold;">' . L("买涨") . '</span>';
				} else {
					$ajax['timer_type'] = '<span style="color:red;font-weight:bold;">' . L("买跌") . '</span>';
				}
				$ajax['coinname'] = $orderinfo['coinname'];
				$ajax['buyprice'] = $orderinfo['buyprice'];
				$ajax['time'] = $orderinfo['time'] * 60;
				$ajax['timer_newprice'] = $close;
				$ajax['timer_buynum'] = $orderinfo['num'];
				$ajax['timer_buyprice'] = $orderinfo['buyprice'];
				$ajax['hyzd'] = $orderinfo['hyzd'];
				$this->ajaxReturn($ajax);
			} else {
				$this->ajaxReturn(['code' => 0, 'msg' => L('建仓失败')]);
			}
		} else {
			$this->ajaxReturn(['code' => 0, 'msg' => L('网络错误')]);
		}
	}

	//Trang chủ hợp đồng thứ hai
	public function index()
	{
		$uid = userid();
		if ($uid <= 0) {
			$this->redirect('Login/index');
		}
		$this->assign('uid', $uid);


		$smybol = trim(I('get.coin'));

		if ($smybol != '') {
			$map['status'] = 1;
			$map['coinname'] = array('like', "%$smybol%");
			$list = M("ctmarket")->where($map)->field("coinname")->find();
			if (!empty($list)) {
				$smybol = $list['coinname'];
			} else {
				$smybol = "btc";
			}
		} else {
			$smybol = "btc";
		}

		$market = $smybol . "usdt";

		$upmarket = strtoupper($smybol) . "/USDT";
		$this->assign('upmarket', $upmarket);
		$this->assign('market', $market);
		$this->assign('smybol', $smybol);

		//获取合约设置项
		$hyset = M("hysetting")->where(array('id' => 1))->field("hy_time,hy_ykbl,hy_tzed")->find();
		$hy_time = $hyset['hy_time'];
		$hy_ykbl = $hyset['hy_ykbl'];
		$hy_tzed = $hyset['hy_tzed'];
		$time_arr = explode(',', $hy_time);
		$ykbl_arr = explode(',', $hy_ykbl);
		$tzed_arr = explode(',', $hy_tzed);
		$cd = array();
		$ed = array();
		$len = count($time_arr);
		for ($i = 0; $i < $len; $i++) {
			$cd[$i]['sort'] = $i + 1;
			$cd[$i]['time'] = $time_arr[$i] * 60;
			$cd[$i]['ykbl'] = $ykbl_arr[$i];
			$ed[$i]['sort'] = $i + 1;
			$ed[$i]['tzed'] = $tzed_arr[$i];
		}

		$this->assign("cd", $cd);
		$this->assign('ed', $ed);
		//获取会员资产
		$minfo = M("user_coin")->where(array('userid' => $uid))->find();
		$usdt_blan = $minfo['usdt'];
		$this->assign('eusdt_blan', $usdt_blan);

		//体验金
		$uinfo = M("user")->where(array('id' => $uid))->field("money")->find();
		$tj_money = $uinfo['money'];
		$this->assign('tj_money', $tj_money);

		$this->assign('select', 'contract');



		$this->display();
	}
}
