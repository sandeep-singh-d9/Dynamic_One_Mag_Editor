<template>
	<div class="col-sm-10 right_side">
		<div class="gjs-pn-buttons top_preview"></div>
		<router-link to="/preview" target="_blank"><button class="preview_mag" @click="preiviewTab()">Preview</button></router-link>
		 <button class="save_ifc_to_db" @click="saveFcValueToDb">Save Preview</button>
		<LoaderComponent/>
        <div class="preview_responsive" v-if="!this.$store.state.Savefcloader">
	    	<div class="sub_right_side preview_content">
				<div class="row align-items-center">
					<div class="col-8 align-self-center someBlock"></div>
				</div>
	       		<frontCover/>
	       <!-- <IfcCover/>    -->
	    	</div>
	    </div>
	</div>
</template>

<script>

export default {
	data(){
		return{
			fcContent :'',
		}
	},
   mounted(){
   		this.fcContent = $('.preview_content').html(); 
		this.ACTION_CHANGE_STATE(['fcPreview', this.fcContent])
	},
    methods:{  
      
    }, 
}
</script>

<style>

</style>
