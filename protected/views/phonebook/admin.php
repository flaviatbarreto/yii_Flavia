<?php
/* @var $this PhonebookController */
/* @var $model Phonebook */

$this->breadcrumbs=array(
	'Phonebooks'=>array('index'),
	'Manage',
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('phonebook-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Gerenciar Contatos</h1>

<?php echo CHtml::link('Busca Avançada','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'phonebook-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'name',
		'phone',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
