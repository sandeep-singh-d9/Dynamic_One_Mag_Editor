<template>
	<div>
		<div class="modal fade show_data" id="ifcModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-xl" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Insert New Module 
							<!-- <a  class="float-left" style="cursor: pointer;">
								<i class="ti-arrow-left"></i>
							</a> -->
						</h5>
					</div>
					<div class="modal-body">
						<div class="tab-content">
							<div id="content" class="side_bar_content tab-pane active">
								<div  id="design" class="tab-pane">
									<div class="content_area">
										<div class="font_content">
											Upload Profile Image
										</div>
                                        <!---for profile image ---->
                                            <div v-if="this.openIfcModalForLogo != 'ifc-logo' && this.openIfcModalForText != 'ifc-text' && this.openIfcModalForSignature != 'ifc-signature'"> 
                                                <div class="Logo_select_option row">
                                                    <!-- <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcValue == 'remove' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="slideTwo">
        														<input type="radio" value="remove" v-model="selectIfcValue" @change="getIfcInputValue(selectIfcValue)" id="slideTwo" name="check" checked />Remove Profile Image
        													</label>
        												</div>
                                                    </div> -->
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcValue == 'default' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="UseDefault">
        														<input  type="radio" id="UseDefault" value="default" v-model="selectIfcValue" @change="getIfcInputValue(selectIfcValue)" name="check" checked />Use Default Profile
        													</label>
        												</div>
                                                    </div>
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcValue == 'addMedia' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="addMedia">
        														<input  type="radio" id="addMedia" data-id="addMedia_id" value="addMedia" v-model="selectIfcValue" @change="getIfcInputValue(selectIfcValue)" name="check" checked />Add Profile Image
        													</label>
        												</div>                                                        
                                                    </div>
                                                </div>
                                                <div class="add_media">
                                                    <button v-if="this.$store.state.displayIfcMedia" class="btn btn-block media_btn " data-target="#fileModal" data-toggle="modal" @click="check_Value(1)">
                                                        <span class="font_content">Add Media</span>
                                                    </button>
                                                </div>
                                                <div v-if="this.$store.state.displayIfcMedia" class="add-media-show" id="addMedia_id" data-section="section-1">
                                                    <img src="images/avatar_image.jpg" alt="" data-target="#fileModal" data-toggle="modal"  title=""  style="margin-bottom:20px;" v-show="imageIfcPath == ''">
                                                    <img data-target="#fileModal" data-toggle="modal"  v-if="imageIfcPath != ''" :src="imageIfcPath" alt="" srcset="" style="margin-bottom:20px; margin-top: 37px;">
                                                </div>
                                            </div>
                                        <!---End profile image ---->
                                        <!---for logo ifc ---->
                                            <div v-if="this.openIfcModalForLogo == 'ifc-logo'" > 
                                                <div class="Logo_select_option row">
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcLogoValue == 'remove' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="slideTwo">
        														<input type="radio" value="remove" v-model="selectIfcLogoValue" @change="getIfcLogoInputValue(selectIfcLogoValue)" id="slideTwo" name="check" checked />Remove Logo
        													</label>
        												</div>
                                                    </div>
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcLogoValue == 'default' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="UseDefault">
        														<input  type="radio" id="UseDefault" value="default" v-model="selectIfcLogoValue" @change="getIfcLogoInputValue(selectIfcLogoValue)" name="check" checked />Use Default Logo
        													</label>
        												</div>
                                                    </div>
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcLogoValue == 'addMedia' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="addMedia">
        														<input  type="radio" id="addMedia" data-id="addMedia_id" value="addMedia" v-model="selectIfcLogoValue" @change="getIfcLogoInputValue(selectIfcLogoValue)" name="check" checked />Add Logo
        													</label>
        												</div>
                                                    </div>
                                                </div>
                                                <div class="add_media">
                                                    <button v-if="this.$store.state.displayIfcLogoMedia" class="btn btn-block media_btn"  @click="check_Value(2)" data-target="#fileModal" data-toggle="modal">
                                                        <span class="font_content">Add Media</span>
                                                    </button>
                                                </div>
                                                <div v-if="this.$store.state.displayIfcLogoMedia" class="add-media-show" id="addMedia_id" data-section="section-1">
                                                    <img src="images/avatar_image.jpg" alt="" data-target="#fileModal" data-toggle="modal"  title=""  style="margin-bottom:20px;" v-show="imageIfcLogoPath == ''">
                                                    <img data-target="#fileModal" data-toggle="modal"  v-if="imageIfcLogoPath != ''" :src="imageIfcLogoPath" alt="" srcset="" style="margin-bottom:20px; margin-top: 37px;">
                                                </div>
                                            </div>
                                        <!---End logo ifc ---->
                                        <!---for profile_text IFC ---->
                                            <div  v-if="this.openIfcModalForText == 'ifc-text'">  
                                                <div class="ifc_title">
                                                    <label for="usr">Title:</label>
                                                    <input type="text" v-model='titleInputIfc' @keyup="getTitleIfc(titleInputIfc)" class="form-control" id="usr">
                                                </div>
                                                <div class="ifc_title">
                                                    <label for="usr">CompanyName:</label>
                                                    <input type="text" v-model='companyInputIfc' @keyup="getCompanyNameIfc(companyInputIfc)" class="form-control" id="usr">
                                                </div>
                                                <div class="ifc_title">
                                                    <label for="usr">Designation1:</label>
                                                    <input type="text" v-model='designationInputIfc1' @keyup="getdesignationIfc1(designationInputIfc1)" class="form-control" id="usr">
                                                </div>
                                                <div class="ifc_title">
                                                    <label for="usr">Designation2:</label>
                                                    <input type="text" v-model='designationInputIfc2' @keyup="getdesignationIfc2(designationInputIfc2)" class="form-control" id="usr">
                                                </div>
                                                <div class="ifc_title">
                                                    <label for="usr">Designation3:</label>
                                                    <input type="text" v-model='designationInputIfc3' @keyup="getdesignationIfc3(designationInputIfc3)" class="form-control" id="usr">
                                                </div>
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">DesignationTitle1:</label>
                                                    <input type="text" v-model='designationTitleInputIfc1' @keyup="getdesignationTitleIfc1(designationTitleInputIfc1)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">DesignationTitle2:</label>
                                                    <input type="text" v-model='designationTitleInputIfc2' @keyup="getdesignationTitleIfc2(designationTitleInputIfc2)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">DesignationTitle3:</label>
                                                    <input type="text" v-model='designationTitleInputIfc3' @keyup="getdesignationTitleIfc3(designationTitleInputIfc3)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">DesignationTitle4:</label>
                                                    <input type="text" v-model='designationTitleInputIfc4' @keyup="getdesignationTitleIfc4(designationTitleInputIfc4)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">AddressIfc1:</label>
                                                    <input type="text" v-model='addressInputIfc1' @keyup="getAddressIfc1(addressInputIfc1)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">DirectPhone:</label>
                                                    <input type="text" v-model='directPhoneInputIfc' @keyup="getdirectPhoneIfc(directPhoneInputIfc)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">OfficePhone:</label>
                                                    <input type="text" v-model='officePhoneInputIfc' @keyup="getOfficePhoneIfc(officePhoneInputIfc)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">WebsiteUrl:</label>
                                                    <input type="text" v-model='websiteUrlInputIfc' @keyup="getWebsiteUrlIfc(websiteUrlInputIfc)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">Email:</label>
                                                    <input type="text" v-model='emailInputIfc' @keyup="getEmailIfc(emailInputIfc)" class="form-control" id="usr">
                                                </div>
                                                <!---------------------->
                                                <!------------------>
                                                <div class="ifc_title">
                                                    <label for="usr">StNumber:</label>
                                                    <input type="text" v-model='stNumberInputIfc' @keyup="getstNumberIfc(stNumberInputIfc)" class="form-control" id="usr">
                                                </div>
                                            </div>

                                        <!--------- For Signature IFC  ---------->                      
                                            <div class="signature" v-if="this.openIfcModalForSignature == 'ifc-signature'">
                                                <div class="Logo_select_option row">
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcSignatureValue == 'remove' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="slideTwo">
        														<input type="radio" value="remove" v-model="selectIfcSignatureValue" @change="getIfcSignatureInputValue(selectIfcSignatureValue)" id="slideTwo" name="check" checked />Remove Signature
        													</label>
        												</div>
                                                    </div>
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcSignatureValue == 'default' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="UseDefault">
        														<input type="radio" id="UseDefault" value="default" v-model="selectIfcSignatureValue" @change="getIfcSignatureInputValue(selectIfcSignatureValue)" name="check" checked />Use Default Signature
        													</label>
        												</div>
                                                    </div>
                                                    <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcSignatureValue == 'addMedia' }">
                                                        <div class="col-sm-12 text_field">
        													<label for="addMedia">
        														<input type="radio" id="addMedia" data-id="addMedia_id" value="addMedia" v-model="selectIfcSignatureValue" @change="getIfcSignatureInputValue(selectIfcSignatureValue)" name="check" checked />Add Signature
        													</label>
        												</div>
                                                    </div>
                                                </div>
                                                <div class="add_media">
                                                    <button v-if="this.$store.state.displayIfcSignatureMedia" class="btn btn-block media_btn" @click="check_Value(3)" data-target="#fileModal" data-toggle="modal">
                                                        <span class="font_content">Add Media</span>
                                                    </button>
                                                </div>
                                                <div v-if="this.$store.state.displayIfcSignatureMedia" class="add-media-show" id="addMedia_id" data-section="section-1">
                                                    <img src="images/avatar_image.jpg" alt="" data-target="#fileModal" data-toggle="modal" title="" style="margin-bottom:20px;" v-show="imageIfcSignaturePath == ''">
                                                    <img data-target="#fileModal" data-toggle="modal" v-if="imageIfcSignaturePath != ''" :src="imageIfcSignaturePath" alt="" srcset="" style="margin-bottom:20px; margin-top: 37px;">
                                                </div>
                                            </div>
                                        <!------------End IFC Signature  ------->
                                        <!---------------------->
                                            <!-- <div  v-if="this.openIfcModalForText == 'ifc-text'">
                                                 <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcTextValue == 'default' }">
                                                    <div class="col-sm-6 text_field">
                                                        <span>Use Default text</span>
                                                    </div>
                                                    <div class="col-sm-6 icon_field">
                                                        <section title=".slideTwo">
                                                            
                                                            <div class="slideTwo">  
                                                            <input  type="radio" id="UseDefault" value="default" v-model="selectIfcTextValue" @change="getIfcTextInputValue(selectIfcTextValue)" name="check" checked />
                                                            <label for="UseDefault"></label>                         
                                                            </div>
                                                            
                                                        </section>				
                                                    </div>
                                                </div>
                                                <div class="row modal_radiobox" :class="{'activeRadio':this.selectIfcTextValue == 'remove' }">
                                                    <div class="col-sm-6 text_field">
                                                        <span>Customize text</span>
                                                    </div>
                                                    <div class="col-sm-6 icon_field">
                                                        <section title=".slideTwo">
                                                           
                                                            <div class="slideTwo">  
                                                            <input type="radio" value="remove" v-model="selectIfcTextValue" @change="getIfcTextInputValue(selectIfcTextValue)" id="slideTwo" name="check" checked />
                                                            <label for="slideTwo"></label>
                                                        
                                                            </div>
                                                            
                                                        </section>
                                                    </div>
                                                </div>
                                                 <div class="content_area" v-if="displayIfcTextArea">
                                                    
                                                    <div class="font_content">Body Content</div>
                                                    <div class="editable" contenteditable="true" ></div>
                                            
                                                    <div class="font_content">Font Style</div>
                                                    <div class="font_body">
                                                        <ul>
                                                            <li>
                                                                <a @click="addfont('italic', false, null), (italicBtn = !italicBtn)" :class="{'btn': true, 'active' : italicBtn}" title="Italic" data-toggle="tooltip" data-placement="top">
                                                                    <i class="ti-Italic"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a @click="addfont('bold', false, null), (boldBtn = !boldBtn)" :class="{'btn': true, 'active' : boldBtn}" title="Bold" data-toggle="tooltip" data-placement="top">
                                                                    <i class="fas fa-bold"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a @click="addfont('underline', false, null), (underlineBtn = !underlineBtn)" :class="{'btn': true, 'active' : underlineBtn}" title="Underline" data-toggle="tooltip" data-placement="top">
                                                                    <i class="ti-underline"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a @click="getvalue()" :class="{'btn': true, 'active' : codeBtn}" title="Code Format" data-toggle="tooltip" data-placement="top">
                                                                    <i class="ti-split-v-alt" ></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                 
                                                    <div class="font_content">Font Heading Tag</div>
                                                    <div class="heading_tag">
                                                        <select name id @change="insertTag(headingTag)" v-model="headingTag">
                                                            <option value>Select Heading Tag</option>
                                                            <option value="h1">Heading &lt;h1&gt;</option>
                                                            <option value="h2">Heading &lt;h2&gt;</option>
                                                            <option value="h3">Heading &lt;h3&gt;</option>
                                                            <option value="h4">Heading&lt;h4&gt;</option>
                                                            <option value="h5">Heading &lt;h5&gt;</option>
                                                            <option value="h6">Heading &lt;h6&gt;</option>
                                                            <option value="p">Paragraph &lt;p&gt;</option>
                                                        </select>
                                                    </div>

                                                    
                                                    

                                            
                                                    <div class="font_content">Text Alignment</div>
                                                    <div class="font_body">
                                                        <ul>
                                                            <li>
                                                                <a @click="addfont('justifyLeft' ,false, null), resetActiveOnAlign('textLeft', textLeft)" :class="{'btn': true, 'active' : textLeft}" title="Left" data-toggle="tooltip" data-placement="top">
                                                                    <i class="ti-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a @click="addfont('justifyCenter', false, null), resetActiveOnAlign('textCenter', textCenter)" :class="{'btn': true, 'active' : textCenter}" title="Center" data-toggle="tooltip" data-placement="top">
                                                                    <i class="ti-align-center"></i>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a @click="addfont('justifyRight' ,false, null), resetActiveOnAlign('textRight', textRight)" :class="{'btn': true, 'active' : textRight}" title="Right" data-toggle="tooltip" data-placement="top">
                                                                    <i class="ti-align-right"></i>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a @click="addfont('justifyFull' ,false, null), resetActiveOnAlign('textJustify', textJustify)" :class="{'btn': true, 'active' : textJustify}" title="Justify" data-toggle="tooltip" data-placement="top">
                                                                    <i class="ti-align-justify"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    
                                                    <div class="font_content">Text Color</div>
                                                    <div class="font_body">
                                                        <div class="col-sm-12">
                                                            <color-picker v-model="color_picker" @input="changeFontColor"></color-picker>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> -->
                                        <!---END profile_text IFC ---->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="inner_footer_content">
							<button class="btn bottom_btn" data-dismiss="modal" @click="cancelModel">
								<i class="ti-close" aria-hidden="true"></i>
							</button>
							<button class="btn bottom_btn" @click="addfont('redo', false, null)">
								<i class="ti-back-right"></i>
							</button>
							<button class="btn bottom_btn" @click="addfont('undo', false, null)">
								<i class="ti-back-left"></i>
							</button>
							<button class="btn bottom_btn"  data-dismiss="modal" @click="saveIfcChanges">
								<i class="ti-check" ></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import { mapState, mapMutations, mapGetters, mapActions } from "vuex"
import ColorPicker from "vue-iro-color-picker"
export default {
  	data() {
		return {
			fileModel: "",
			inside: 'inner',
			showCodeEditor: false,
			headingTag: "",
			color_picker: "",
			code: this.editorTempData,
			width: '',
			height: '',
			italicBtn: false,
			boldBtn: false,
			underlineBtn: false,
			unorderlistBtn: false,
			orderlistBtn: false,
			codeBtn: false,
			textLeft: false,
			textCenter: false,
			textRight: false,
			textJustify: false,
            // selectIfcValue: 'default',
            // selectIfcLogoValue : 'default',
            // selectIfcSignatureValue : 'default',
            selectIfcTextValue: 'default',
            // titleInputIfc:'Kat Nitsou',
            // companyInputIfc:'Sotheby’s International Realty, Inc.',
            // designationInputIfc1:'ADPAÂ®, ',
            // designationInputIfc2:'ADPAÂ®, ',
            // designationInputIfc3:'C(k)PÂ®',
            // designationTitleInputIfc1: 'Business Development Director ',
            // designationTitleInputIfc2: 'Business Development Director ',
            // designationTitleInputIfc3: 'Alternative Investments Director ',
            // designationTitleInputIfc4: 'Associate Stock Plan Director',
            // addressInputIfc1: '16027 VENTURA BLVD, Suite 330 ENCINO, CA, 91436',
            // stNumberInputIfc: 'NMLS#',
            // emailInputIfc: 'kat.nitsou@sothebyinternational.com',
            // websiteUrlInputIfc: 'sothebyshomes.com',
            // officePhoneInputIfc: 'M : 323-228-3805',
            // directPhoneInputIfc: 'O : 626-396-9400',
		};
	},
	components: {
		"color-picker": ColorPicker
	},
	computed: {
        selectIfcValue:{
            get() {
				return this.$store.state.ifcProfileChoose;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.ifcProfileChoose = newValue
            }
        },
        selectIfcLogoValue:{
            get() {
				return this.$store.state.ifcBelowimageChoose;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.ifcBelowimageChoose = newValue
            }
        },
        selectIfcSignatureValue:{
            get() {
				return this.$store.state.ifcSignatureChoose;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.ifcSignatureChoose = newValue
            }
        },
        titleInputIfc:{
            get() {
				return this.$store.state.ifcTitleText;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.ifcTitleText = newValue
            }
        },
        companyInputIfc:{
             get() {
				return this.$store.state.ifcCompanyName;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.ifcCompanyName = newValue
            }
        },
        designationInputIfc1:{
              get() {
				return this.$store.state.designation1;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.designation1 = newValue
            }
        },
        designationInputIfc2:{
              get() {
				return this.$store.state.designation2;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.designation2 = newValue
            }
        },
        designationInputIfc3:{
            get() {
				return this.$store.state.designation3;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.designation3 = newValue
            }
        },
        designationTitleInputIfc1:{
            get() {
				return this.$store.state.designationTitle1;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.designationTitle1 = newValue
            }
        },
        designationTitleInputIfc2:{
            get() {
				return this.$store.state.designationTitle2;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.designationTitle2 = newValue
            }
        },
        designationTitleInputIfc3:{
            get() {
				return this.$store.state.designationTitle3;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.designationTitle3 = newValue
            }
        },
        designationTitleInputIfc4:{
            get() {
				return this.$store.state.designationTitle4;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.designationTitle4 = newValue
            }
        },
        addressInputIfc1:{
            get() {
				return this.$store.state.addressIfc1;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.addressIfc1 = newValue
            }
        },
        stNumberInputIfc:{ 
            get() {
				return this.$store.state.stNumberIfc;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.stNumberIfc = newValue
            }
        },
        emailInputIfc:{
             get() {
				return this.$store.state.emailIfc;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.emailIfc = newValue
            }
        },
        websiteUrlInputIfc:{
             get() {
				return this.$store.state.websiteUrlIfc;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.websiteUrlIfc = newValue
            }
        },
        officePhoneInputIfc:{
             get() {
				return this.$store.state.officePhone;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.officePhone = newValue
            }
        },
        directPhoneInputIfc:{
             get() {
				return this.$store.state.directPhoneIfc;
			},
			set(newValue){
			  console.log(newValue)
			return this.$store.state.directPhoneIfc = newValue
            }
        },
	},
	created() {},
	mounted() {
        // alert(this.$store.state.displayIfcLogoMedia)
		$("#ifcModal").modal({
			focus: false,
			// Do not show modal when innitialized.
			show: false,
			backdrop: 'static', // For static modal
			keyboard: false // prevent click outside of the modal
		});
	},
	methods: {
		// showCodeMap () {
		// this.showCodeEditor = !this.showCodeEditor
		// this.codeBtn = !this.codeBtn
		// if (this.showCodeEditor) {
		// 	this.editorCodeTemplate = $('.editable').html();
		// } else {
		// 	console.log(this.editorCodeTemplate)
		// 	$('.editable').empty()
		// 	$('.editable').html(this.editorCodeTemplate);
		// }
		// },
		// onCmReady(cm) {
		// console.log('the editor is readied!', cm)
		// },
		// onCmFocus(cm) {
		// console.log('the editor is focus!', cm)
		// },
		// onCmCodeChange(newCode) {
		// console.log('this is new code', newCode)
		// this.code = newCode
		// },
		resetActiveOnAlign (type, value) {
			this.textLeft = false
			this.textRight = false
			this.textCenter = false
			this.textJustify = false
			this[type] = !this[value]
		}
	}
};
</script>

<style>
</style>