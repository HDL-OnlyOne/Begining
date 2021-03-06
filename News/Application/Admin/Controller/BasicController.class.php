<?php
/**
 * Created by PhpStorm.
 * User: inner
 * Date: 2017/10/26
 * Time: 上午10:48
 */
namespace Admin\Controller;
use Think\Controller;
use Think\Exception;

class BasicController extends Controller{
    public function index(){
        $res = D('Basic')->select();

        $this->assign('vo',$res);
        $this->display();
    }
    public function add(){
        if ($_POST){
            if (!isset($_POST['title']) || !$_POST['title']) {
            return show(0, '标题不存在');
            }
            if (!isset($_POST['keywords']) || !$_POST['keywords']) {
            return show(0, '关键词不存在');
            }
            if (!isset($_POST['description']) || !$_POST['description']) {
                return show(0, '描述不存在');
            }

//        dump($_POST);exit();
            try{
                D('Basic')->save($_POST);
            }catch (Exception $e){
                return show(0,$e->getMessage());
            }
            return show(1,'缓存成功');
        }
        else{
            return show(1,'缺少数据');
        }

    }

}