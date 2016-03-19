.class public Lcom/google/android/apps/hangouts/fragments/BabelPhotoViewFragment$StoragePermissionHelperActivity;
.super Lils;
.source "SourceFile"


# instance fields
.field private final a:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lils;-><init>()V

    .line 180
    new-instance v0, Lhqo;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/BabelPhotoViewFragment$StoragePermissionHelperActivity;->k:Lino;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Lcom/google/android/apps/hangouts/fragments/BabelPhotoViewFragment$StoragePermissionHelperActivity;->j:Lilh;

    .line 181
    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/BabelPhotoViewFragment$StoragePermissionHelperActivity;->a:Lhpu;

    .line 180
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 185
    invoke-super {p0, p1}, Lils;->a(Landroid/os/Bundle;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/BabelPhotoViewFragment$StoragePermissionHelperActivity;->j:Lilh;

    const-class v1, Ldck;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldck;

    sget v1, Laen;->eT:I

    new-instance v2, Lbxu;

    invoke-direct {v2, p0}, Lbxu;-><init>(Lcom/google/android/apps/hangouts/fragments/BabelPhotoViewFragment$StoragePermissionHelperActivity;)V

    invoke-interface {v0, v1, v2}, Ldck;->a(ILdcl;)V

    .line 198
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 202
    invoke-super {p0, p1}, Lils;->onCreate(Landroid/os/Bundle;)V

    .line 204
    if-nez p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/BabelPhotoViewFragment$StoragePermissionHelperActivity;->j:Lilh;

    const-class v1, Ldck;

    .line 207
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldck;

    new-instance v1, Ldco;

    sget v2, Laen;->eT:I

    const/16 v3, 0xa6b

    invoke-direct {v1, v2, v3}, Ldco;-><init>(II)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 212
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 208
    invoke-interface {v0, v1, v2}, Ldck;->a(Ldco;Ljava/util/List;)V

    .line 214
    :cond_0
    return-void
.end method
