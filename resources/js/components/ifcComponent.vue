<template>
    <div>
        <div class="row main_container m-0">
			<LeftSideComponent />
            <div class="col-sm-10 right_side">
            <div class="gjs-pn-buttons top_preview"></div>
            <router-link to="/preview" target="_blank"><button class="preview_mag" @click="preiviewTab()">Preview</button></router-link>
            <button class="save_ifc_to_db" @click="saveifcDataToDb">Save Preview</button>
            <LoaderComponent/>
                <div class="preview_responsive" v-if="!this.$store.state.Savefcloader">
                    <div class="inner_right_side preview_content">
                        <div class="cover_img">
                            <img src="images/inside_front.jpg" style="opacity: 0;">
                        </div>
                        <div class="inside_ifc">
                            <div class="row">
                                <div class="col-md-4">
                                   
                                    <div class="profile_photo">
                                         <iconHoverComponent class="insidefc_profile"/>
                                         <img :src="defaultIfcImagePath"  v-if="imageIfcPath == ''" title="" >
                                        <img v-if="imageIfcPath != ''" :src="imageIfcPath" alt="" srcset="" style="margin-bottom:20px;">
                            	
                                    </div>
                                    <div class="profile_text" v-if="!this.ifcTextDisplay">
                                         <iconHoverIfcComponent class="insidefc_profile"/>
                                        <h2>{{this.ifcTitleText}}</h2>
                                        <p><b>{{this.ifcCompanyName}}</b></p>
                                        <p>{{this.designation1}} {{this.designation2}} {{this.designation3}}</p>
                                        <p>{{this.designationTitle1}}
                                            {{this.designationTitle2}}
                                            {{this.designationTitle3}}
                                            {{this.designationTitle4}}</p>
                                        <p class="mb-3"></p>
                                        <p>{{this.addressIfc1}}</p>
                                        <!-- <p>ENCINO, CA, 91436</p> -->
                                        <p>{{this.directPhoneIfc}}</p>
                                        <p>{{this.officePhone}}</p>
                                        <p class="mb-3"></p>
                                        <p>{{this.websiteUrlIfc}}</p>
                                        <p>{{this.emailIfc}}</p>
                                        <p class="mb-3"></p>
                                        <p>{{this.stNumberIfc}}</p>
                                    </div>
                                    <div class="profile_text" v-if="this.ifcTextDisplay" >
                                      <div v-html="this.ifcText"></div>
                                       <iconHoverIfcComponent class="insidefc_profile"/>
                                    </div>
                                    <div class="below_logo">
                                            <iconHoverIfcComponent class="insidefc_profile"/>
                                        <!-- <img src="images/footer_logo.png" alt="" title=""> defaultIfcLogoPath-->
                                         <img :src="defaultIfcLogoPath" v-if="imageIfcLogoPath == ''"   title="" >
                                        <img v-if="imageIfcLogoPath != ''" :src="imageIfcLogoPath" alt="" srcset="" style="margin-bottom:20px;">
                                    </div>                                 
                                </div>
                                <div class="col-md-8">
                                    <div class="right_ifc_content" v-if="!this.ifcRightTextDisplay">
                                        
                                          <div class="hoverComponetRemove">
                                                <div class="inner_plus_data">        
                                                <i class="ti-pencil" title="Edit" @click="editIfcRight()"></i>
                                                </div>
                                            </div>
                                         
                                            <div v-if="!this.showTextAreaIfcRight" >
                                               <p  v-if="this.ifcRightTextInputValue == ''" v-html="this.inputTextRightIfc"></p>
                                                <p  class="value" v-if="this.ifcRightTextInputValue!= ''" v-html="this.ifcRightTextInputValue"></p>
                                            </div>
                                         
                                         <!-- <p v-if="!this.showTextAreaIfcRight && this.ifcRightTextInputValue != ''" v-html="this.inputTextRightIfc"></p>    -->
                                        <!-- <textarea  v-if= this.showTextAreaIfcRight name="" id="" cols="30" rows="10" v-model="inputTextRightIfc">    
                                        </textarea> -->
                                        <div v-if="this.showTextAreaIfcRight" class="editor_pop_up">
                                            <div class="hoverComponetRemove">
                                                <div class="inner_plus_data">        
                                                <a @click="addfont('italic', false, null), (italicBtn = !italicBtn)" :class="{'btn': true, 'active' : italicBtn}" title="Italic" data-toggle="tooltip" data-placement="top">
                                                            <i class="ti-Italic"></i>
                                                </a>
                                                 <a @click="addfont('bold', false, null), (boldBtn = !boldBtn)" :class="{'btn': true, 'active' : boldBtn}" title="Bold" data-toggle="tooltip" data-placement="top">
                                                            <i class="fas fa-bold"></i>
                                                 </a>
                                                 <a @click="addfont('underline', false, null), (underlineBtn = !underlineBtn)" :class="{'btn': true, 'active' : underlineBtn}" title="Underline" data-toggle="tooltip" data-placement="top">
                                                            <i class="ti-underline"></i>
                                                 </a>
                                               <a @click="addfont('justifyLeft' ,false, null), resetActiveOnAlign('textLeft', textLeft)" :class="{'btn': true, 'active' : textLeft}" title="Left" data-toggle="tooltip" data-placement="top">
                                                            <i class="ti-align-left"></i>
                                                </a>
                                               <a @click="addfont('justifyCenter', false, null), resetActiveOnAlign('textCenter', textCenter)" :class="{'btn': true, 'active' : textCenter}" title="Center" data-toggle="tooltip" data-placement="top">
                                                            <i class="ti-align-center"></i>
                                                </a>
                                                 <a @click="addfont('justifyRight' ,false, null), resetActiveOnAlign('textRight', textRight)" :class="{'btn': true, 'active' : textRight}" title="Right" data-toggle="tooltip" data-placement="top">
                                                    <i class="ti-align-right"></i>
                                                </a>
                                                <a @click="addfont('justifyFull' ,false, null), resetActiveOnAlign('textJustify', textJustify)" :class="{'btn': true, 'active' : textJustify}" title="Justify" data-toggle="tooltip" data-placement="top">
                                                    <i class="ti-align-justify"></i>
                                                </a>
                                                <select name id @change="insertTag(headingTag)" v-model="headingTag">
                                                    <option value> Heading </option>
                                                    <option value="h1">H1</option>
                                                    <option value="h2">H2</option>
                                                    <option value="h3">H3</option>
                                                    <option value="h4">H4</option>
                                                    <option value="h5">H5</option>
                                                    <option value="h6">H6</option>
                                                    <option value="p">P</option>
                                                </select>
                                                <a @click="saveIfcRight()" :class="{'btn': true,}">
                                                  <i class="ti-check" title="Edit" ></i>
                                                </a>
                                                </div>
                                            </div>
                                           
                                        </div>
                                        <div class="content_area Edit_data" v-if="this.showTextAreaIfcRight">

                                            <!-- <div class="font_content">Body Content</div> -->
                                            <div v-if="this.ifcRightTextInputValue == ''"  class="editable_ifc_text" contenteditable="true" v-html="this.inputTextRightIfc"></div>
                                            <div v-if="this.ifcRightTextInputValue != ''"  class="editable_ifc_text" contenteditable="true" v-html="this.ifcRightTextInputValue"></div>
                                          
                                            <!-- <div class="font_content">Font Style</div>
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
                                                            <i class="ti-split-v-alt"></i>
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
                                            </div> -->
                                        </div>
                                        <div class="ifc_signature_image">
                                            <img v-if="this.imageIfcSignaturePath == ''" :src="defaultIfcSignaturePath" alt="">
                                            <img v-if="this.imageIfcSignaturePath != ''" :src="imageIfcSignaturePath" alt="">
                                          <iconHoverIfcComponent class="insidefc_profile"/>    
                                        </div>
                                    </div>
                                    <!-- <div class="right_ifc_content" v-if="this.ifcRightTextDisplay">
                                        <div v-html="this.ifcRightText"></div>
                                        <iconHoverIfcComponent class="insidefc_profile"/>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <ifcInputComponent/>
        <!-- <ifcTextInputModel/> -->
        <FileModalComponent/>
    </div>
</template>

<script>
import ifcInputComponent from "./model/ifcModelInput";
// import ifcTextInputModel from "./model/ifcTextInputModal";
import FileModalComponent from "./model/fileModalComponent";
import { mapState, mapActions, mapGetters, mapMutations } from 'vuex';
import ColorPicker from "vue-iro-color-picker"
var br  = '<br><br>'
var defaultTextIfc= 'Greetings '+br+'The chill in the air will soon give way to the spontaneous showers of early spring. “Do I need a coat? A jacket? A trench? Umbrella?” Transitional periods can be challenging. The key is to approach each day prepared for as many scenarios as possible. Just as it’s our goal to present financial options to help you reach future goals, this edition of ONE, The Style Issue, offers exclusive essentials perfect for elevating your lifestyle today. '+br+' “Dress You Up” provides tips applicable to everyone’s wardrobe and individual aesthetic. Serving as a sartorial assistant, this fashion feature guides you away from trends and toward personalized classic style. Think Katharine Hepburn’s contemporary fashion parade in the 1938 film Holiday and Colin Firth’s impeccably tailored suiting in 2014’s Kingsman: The Secret Service. '+br+' And the highly anticipated and fantastically stylish Kentucky Derby is run every year on the first Saturday in May. So, for those who can’t make it to Churchill Downs, the Celebrate section presents everything you need to throw “The Perfect Derby Affair” (fascinators not included).'+br+' As you embrace this season, remember that we are here to assist you in building your financial foundation, one that will enable you to maintain your life in whatever style you wish.'+br+'Sincerely,'
export default {
    components:{
         ifcInputComponent,
        //  ifcTextInputModel,
         FileModalComponent,
         "color-picker": ColorPicker
    },
    data(){
       return{
           inputTextRightIfc:defaultTextIfc,
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
            //ibcContent :'' ,
       }
       
    },
    methods:{
        resetActiveOnAlign (type, value) {
			this.textLeft = false
			this.textRight = false
			this.textCenter = false
			this.textJustify = false
			this[type] = !this[value]
		},
        
    },

    computed: {
        ...mapState([
            'ifcPreview',
            'bcPreview',
        ])
    },
    mounted(){
        this.saveIFCPreview()
        this.getifcUserBook()
    },
}
</script>

<style>

</style>