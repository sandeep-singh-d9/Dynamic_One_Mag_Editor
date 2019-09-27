<template>
    <div>
        <div class="inner_right_side 1" v-if="showFrontCover">
                <div class="cover_img">
                    <img src="images/front_cover.jpg">
                </div>
            <div class="above_img_text">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div v-if="hideFcText" :class="{'col-md-4':true, 'mt-5':true ,'logo':true}" :style="{'text-align':this.textAlign == '' ? 'center':this.textAlign }">
                        <iconHoverComponent class="hoverShow" />
                        <span>
                        <img :src="defaultImagePath"  title=""  v-if="imagePath == ''">
                        </span>			
                        <img v-if="imagePath != ''" :src="imagePath" alt="" srcset="" style="margin-bottom:20px;">
                    </div>                   
                    <div  v-if="this.fcLogoTextDisplay " class="col-md-4 mt-5 logo text_Fc_logo">
                        <div v-html= this.fcLogoText></div> 
                          <iconHoverComponent class="hoverShowtext" />          
                    </div>
                </div>
            </div>
        </div>
        <ModelInputComponent/>  
    </div>
</template>

<script>
import ModelInputComponent from "./model/modelInputComponent";
import { mapState, mapActions, mapGetters, mapMutations } from 'vuex';
export default {
    computed: {
        ...mapState([
            'fcPreview',
        ])
    },
     components: {
       ModelInputComponent
     },
    data(){
       
        return{
      
        }
    },
   mounted(){
       this.getfcUserBook()
    },
}
</script>

<style>

</style>