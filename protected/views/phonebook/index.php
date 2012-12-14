<?php
/* @var $this PhonebookController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Phonebooks',
);

?>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
