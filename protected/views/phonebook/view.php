<?php
/* @var $this PhonebookController */
/* @var $model Phonebook */

$this->breadcrumbs=array(
	'Phonebooks'=>array('index'),
	$model->name,
);
?>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'name',
		'phone',
	),
)); ?>
