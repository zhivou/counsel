import { ComponentStory, ComponentMeta } from '@storybook/react';
import { Admin } from './admin';

const Story: ComponentMeta<typeof Admin> = {
  component: Admin,
  title: 'Admin',
};
export default Story;

const Template: ComponentStory<typeof Admin> = (args) => <Admin {...args} />;

export const Primary = Template.bind({});
Primary.args = {};
