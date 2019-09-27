<template>
    <div class="gjs-pn-buttons top_preview">
        <iconPreviewComponent/>
        <div v-html="this.previewFc" class="col-sm-10 preview_div"></div>
    </div>
</template>

<script>
export default {
   mounted(){
      $(document).ready(function(){
           $('.hoverComponetRemove').css('display','none')
      })
   }
}
</script>