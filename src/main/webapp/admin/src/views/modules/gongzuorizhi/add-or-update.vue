<template>
	<div class="addEdit-block" :style='{"padding":"30px 30px 30px 240px","backgroundAttachment":"fixed","background":"url(http://codegen.caihongy.cn/20220805/c242e6fd2047434bb1e519427e59e925.png)","backgroundSize":"cover","backgroundPosition":"center center","backgroundRepeat":"no-repeat","height":"calc(100vh - 120px)"}' style="width: 100%;">
		<el-form
			:style='{"padding":"30px","boxShadow":"0 0px 0px rgba(64, 158, 255, .3)","borderRadius":"0","flexWrap":"wrap","background":"#fff","display":"flex"}'
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="100px"
		>
			<template >
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="日志标题" prop="rizhibiaoti">
					<el-input v-model="ruleForm.rizhibiaoti" placeholder="日志标题" clearable  :readonly="ro.rizhibiaoti"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="日志标题" prop="rizhibiaoti">
					<el-input v-model="ruleForm.rizhibiaoti" placeholder="日志标题" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="日志简介" prop="rizhijianjie">
					<el-input v-model="ruleForm.rizhijianjie" placeholder="日志简介" clearable  :readonly="ro.rizhijianjie"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="日志简介" prop="rizhijianjie">
					<el-input v-model="ruleForm.rizhijianjie" placeholder="日志简介" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="教师工号" prop="jiaoshigonghao">
					<el-input v-model="ruleForm.jiaoshigonghao" placeholder="教师工号" clearable  :readonly="ro.jiaoshigonghao"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="教师工号" prop="jiaoshigonghao">
					<el-input v-model="ruleForm.jiaoshigonghao" placeholder="教师工号" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-if="type!='info'"  label="教师姓名" prop="jiaoshixingming">
					<el-input v-model="ruleForm.jiaoshixingming" placeholder="教师姓名" clearable  :readonly="ro.jiaoshixingming"></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else class="input" label="教师姓名" prop="jiaoshixingming">
					<el-input v-model="ruleForm.jiaoshixingming" placeholder="教师姓名" readonly></el-input>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="date" v-if="type!='info'" label="记录时间" prop="jilushijian">
					<el-date-picker
						format="yyyy 年 MM 月 dd 日"
						value-format="yyyy-MM-dd"
						v-model="ruleForm.jilushijian" 
						type="date"
						:readonly="ro.jilushijian"
						placeholder="记录时间"
					></el-date-picker> 
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' class="input" v-else-if="ruleForm.jilushijian" label="记录时间" prop="jilushijian">
					<el-input v-model="ruleForm.jilushijian" placeholder="记录时间" readonly></el-input>
				</el-form-item>
			</template>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-if="type!='info'"  label="日志内容" prop="rizhineirong">
					<editor 
						style="min-width: 200px; max-width: 600px;"
						v-model="ruleForm.rizhineirong" 
						class="editor" 
						action="file/upload">
					</editor>
				</el-form-item>
				<el-form-item :style='{"width":"50%","margin":"0 0 20px 0"}' v-else-if="ruleForm.rizhineirong" label="日志内容" prop="rizhineirong">
                    <span :style='{"fontSize":"14px","lineHeight":"40px","color":"#000","fontWeight":"500","display":"inline-block"}' v-html="ruleForm.rizhineirong"></span>
                </el-form-item>
			<el-form-item :style='{"width":"100%","padding":"0","margin":"0"}' class="btn">
				<el-button :style='{"border":"0","cursor":"pointer","padding":"0","margin":"0 20px 0 0","outline":"none","color":"rgba(255, 255, 255, 1)","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20220727/227fc20604bd464fb6d2f6d9aacc9c12.png) center center","width":"157px","lineHeight":"40px","fontSize":"14px","height":"43px"}'  v-if="type!='info'" type="primary" class="btn-success" @click="onSubmit">提交</el-button>
				<el-button :style='{"border":"0px solid rgba(64, 158, 255, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#fff","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20220727/227fc20604bd464fb6d2f6d9aacc9c12.png) center center","width":"157px","lineHeight":"40px","fontSize":"14px","height":"43px"}' v-if="type!='info'" class="btn-close" @click="back()">取消</el-button>
				<el-button :style='{"border":"0px solid rgba(64, 158, 255, 1)","cursor":"pointer","padding":"0","margin":"0","outline":"none","color":"#fff","borderRadius":"0","background":"url(http://codegen.caihongy.cn/20220727/227fc20604bd464fb6d2f6d9aacc9c12.png) center center","width":"157px","lineHeight":"40px","fontSize":"14px","height":"43px"}' v-if="type=='info'" class="btn-close" @click="back()">返回</el-button>
			</el-form-item>
		</el-form>
    

  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isPhone, isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
	data() {
		let self = this
		var validateIdCard = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!checkIdCard(value)) {
				callback(new Error("请输入正确的身份证号码"));
			} else {
				callback();
			}
		};
		var validateUrl = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isURL(value)) {
				callback(new Error("请输入正确的URL地址"));
			} else {
				callback();
			}
		};
		var validateMobile = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isMobile(value)) {
				callback(new Error("请输入正确的手机号码"));
			} else {
				callback();
			}
		};
		var validatePhone = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isPhone(value)) {
				callback(new Error("请输入正确的电话号码"));
			} else {
				callback();
			}
		};
		var validateEmail = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isEmail(value)) {
				callback(new Error("请输入正确的邮箱地址"));
			} else {
				callback();
			}
		};
		var validateNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isNumber(value)) {
				callback(new Error("请输入数字"));
			} else {
				callback();
			}
		};
		var validateIntNumber = (rule, value, callback) => {
			if(!value){
				callback();
			} else if (!isIntNumer(value)) {
				callback(new Error("请输入整数"));
			} else {
				callback();
			}
		};
		return {
			id: '',
			type: '',
			
			
			ro:{
				rizhibiaoti : false,
				rizhijianjie : false,
				rizhineirong : false,
				jiaoshigonghao : false,
				jiaoshixingming : false,
				jilushijian : false,
			},
			
			
			ruleForm: {
				rizhibiaoti: '',
				rizhijianjie: '',
				rizhineirong: '',
				jiaoshigonghao: '',
				jiaoshixingming: '',
				jilushijian: '',
			},
		
			
			rules: {
				rizhibiaoti: [
				],
				rizhijianjie: [
				],
				rizhineirong: [
				],
				jiaoshigonghao: [
				],
				jiaoshixingming: [
				],
				jilushijian: [
				],
			}
		};
	},
	props: ["parent"],
	computed: {



	},
	created() {
		this.ruleForm.jilushijian = this.getCurDate()
	},
	methods: {
		
		// 下载
		download(file){
			window.open(`${file}`)
		},
		// 初始化
		init(id,type) {
			if (id) {
				this.id = id;
				this.type = type;
			}
			if(this.type=='info'||this.type=='else'){
				this.info(id);
			}else if(this.type=='logistics'){
				this.logistics=false;
				this.info(id);
			}else if(this.type=='cross'){
				var obj = this.$storage.getObj('crossObj');
				for (var o in obj){
						if(o=='rizhibiaoti'){
							this.ruleForm.rizhibiaoti = obj[o];
							this.ro.rizhibiaoti = true;
							continue;
						}
						if(o=='rizhijianjie'){
							this.ruleForm.rizhijianjie = obj[o];
							this.ro.rizhijianjie = true;
							continue;
						}
						if(o=='rizhineirong'){
							this.ruleForm.rizhineirong = obj[o];
							this.ro.rizhineirong = true;
							continue;
						}
						if(o=='jiaoshigonghao'){
							this.ruleForm.jiaoshigonghao = obj[o];
							this.ro.jiaoshigonghao = true;
							continue;
						}
						if(o=='jiaoshixingming'){
							this.ruleForm.jiaoshixingming = obj[o];
							this.ro.jiaoshixingming = true;
							continue;
						}
						if(o=='jilushijian'){
							this.ruleForm.jilushijian = obj[o];
							this.ro.jilushijian = true;
							continue;
						}
				}
				






			}
			
			
			// 获取用户信息
			this.$http({
				url: `${this.$storage.get('sessionTable')}/session`,
				method: "get"
			}).then(({ data }) => {
				if (data && data.code === 0) {
					
					var json = data.data;
					if(((json.jiaoshigonghao!=''&&json.jiaoshigonghao) || json.jiaoshigonghao==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.jiaoshigonghao = json.jiaoshigonghao
						this.ro.jiaoshigonghao = true;
					}
					if(((json.jiaoshixingming!=''&&json.jiaoshixingming) || json.jiaoshixingming==0) && this.$storage.get("role")!="管理员"){
						this.ruleForm.jiaoshixingming = json.jiaoshixingming
						this.ro.jiaoshixingming = true;
					}
				} else {
					this.$message.error(data.msg);
				}
			});
			
			
		},
    // 多级联动参数

    info(id) {
      this.$http({
        url: `gongzuorizhi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
        this.ruleForm = data.data;
        //解决前台上传图片后台不显示的问题
        let reg=new RegExp('../../../upload','g')//g代表全部
        this.ruleForm.rizhineirong = this.ruleForm.rizhineirong.replace(reg,'../../../ssm5umt6/upload');
        } else {
          this.$message.error(data.msg);
        }
      });
    },


    // 提交
    onSubmit() {













var objcross = this.$storage.getObj('crossObj');

      //更新跨表属性
       var crossuserid;
       var crossrefid;
       var crossoptnum;
       if(this.type=='cross'){
                var statusColumnName = this.$storage.get('statusColumnName');
                var statusColumnValue = this.$storage.get('statusColumnValue');
                if(statusColumnName!='') {
                        var obj = this.$storage.getObj('crossObj');
                       if(statusColumnName && !statusColumnName.startsWith("[")) {
                               for (var o in obj){
                                 if(o==statusColumnName){
                                   obj[o] = statusColumnValue;
                                 }
                               }
                               var table = this.$storage.get('crossTable');
                             this.$http({
                                 url: `${table}/update`,
                                 method: "post",
                                 data: obj
                               }).then(({ data }) => {});
                       } else {
                               crossuserid=this.$storage.get('userid');
                               crossrefid=obj['id'];
                               crossoptnum=this.$storage.get('statusColumnName');
                               crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
                        }
                }
        }
       this.$refs["ruleForm"].validate(valid => {
         if (valid) {
		 if(crossrefid && crossuserid) {
			 this.ruleForm.crossuserid = crossuserid;
			 this.ruleForm.crossrefid = crossrefid;
			let params = { 
				page: 1, 
				limit: 10, 
				crossuserid:this.ruleForm.crossuserid,
				crossrefid:this.ruleForm.crossrefid,
			} 
			this.$http({ 
				url: "gongzuorizhi/page", 
				method: "get", 
				params: params 
			}).then(({ 
				data 
			}) => { 
				if (data && data.code === 0) { 
				       if(data.data.total>=crossoptnum) {
					     this.$message.error(this.$storage.get('tips'));
					       return false;
				       } else {
					 this.$http({
					   url: `gongzuorizhi/${!this.ruleForm.id ? "save" : "update"}`,
					   method: "post",
					   data: this.ruleForm
					 }).then(({ data }) => {
					   if (data && data.code === 0) {
					     this.$message({
					       message: "操作成功",
					       type: "success",
					       duration: 1500,
					       onClose: () => {
						 this.parent.showFlag = true;
						 this.parent.addOrUpdateFlag = false;
						 this.parent.gongzuorizhiCrossAddOrUpdateFlag = false;
						 this.parent.search();
						 this.parent.contentStyleChange();
					       }
					     });
					   } else {
					     this.$message.error(data.msg);
					   }
					 });

				       }
				} else { 
				} 
			});
		 } else {
			 this.$http({
			   url: `gongzuorizhi/${!this.ruleForm.id ? "save" : "update"}`,
			   method: "post",
			   data: this.ruleForm
			 }).then(({ data }) => {
			   if (data && data.code === 0) {
			     this.$message({
			       message: "操作成功",
			       type: "success",
			       duration: 1500,
			       onClose: () => {
				 this.parent.showFlag = true;
				 this.parent.addOrUpdateFlag = false;
				 this.parent.gongzuorizhiCrossAddOrUpdateFlag = false;
				 this.parent.search();
				 this.parent.contentStyleChange();
			       }
			     });
			   } else {
			     this.$message.error(data.msg);
			   }
			 });
		 }
         }
       });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.gongzuorizhiCrossAddOrUpdateFlag = false;
      this.parent.contentStyleChange();
    },
  }
};
</script>
<style lang="scss" scoped>
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
	.el-date-editor.el-input {
		width: auto;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
	  	  padding: 0 10px 0 0;
	  	  color: #000;
	  	  font-weight: 500;
	  	  width: 100px;
	  	  font-size: 14px;
	  	  line-height: 40px;
	  	  text-align: right;
	  	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
	  margin-left: 100px;
	}
	
	.add-update-preview .el-input /deep/ .el-input__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 0 12px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-select /deep/ .el-input__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 0 10px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 0 10px 0 30px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 14px;
	  	  height: 40px;
	  	}
	
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
	  	  border: 2px dashed;
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #9EA1F4;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 32px;
	  	  line-height: 200px;
	  	  text-align: center;
	  	  height: 200px;
	  	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
	  	  border: 2px dashed;
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #9EA1F4;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 32px;
	  	  line-height: 200px;
	  	  text-align: center;
	  	  height: 200px;
	  	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
	  	  border: 2px dashed;
	  	  cursor: pointer;
	  	  border-radius: 6px;
	  	  color: #9EA1F4;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 200px;
	  	  font-size: 32px;
	  	  line-height: 200px;
	  	  text-align: center;
	  	  height: 200px;
	  	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
	  	  border: 2px solid;
	  	  border-radius: 0;
	  	  padding: 12px;
	  	  box-shadow: 0 0 0px rgba(64, 158, 255, .5);
	  	  outline: none;
	  	  color: #000;
	  	  border-image: linear-gradient(180deg, rgba(158.00000578165054, 161.0000056028366, 244.0000006556511, 1), rgba(134.00000721216202, 131.00000739097595, 131.00000739097595, 0.18000000715255737)) 2 2;
	  	  width: 400px;
	  	  font-size: 14px;
	  	  height: 120px;
	  	}
</style>
