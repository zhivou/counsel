import styles from './admin.module.css';

/* eslint-disable-next-line */
export interface AdminProps {}

export function Admin(props: AdminProps) {
  return (
    <div className={styles['container']}>
      <h1>Welcome to Admin!</h1>
    </div>
  );
}

export default Admin;
