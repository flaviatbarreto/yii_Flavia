<?php
/* @var $this PhonebookController */
/* @var $model Phonebook */

$this->breadcrumbs=array(
	'Phonebooks'=>array('index'),
	'Create',
);

?>

<h1>Adicionar Contato</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>