.class final Ldbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ldbh;


# direct methods
.method constructor <init>(Ldbh;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Ldbk;->b:Ldbh;

    iput-object p2, p0, Ldbk;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 257
    iget-object v0, p0, Ldbk;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Ldbk;->b:Ldbh;

    .line 1100
    iget-object v0, v0, Ldbh;->binder:Lilh;

    .line 258
    const-class v1, Ldck;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldck;

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v2, Ldco;

    sget v3, Lcom/google/android/apps/hangouts/hangout/StressMode;->tW:I

    const/16 v4, 0xa5d

    invoke-direct {v2, v3, v4}, Ldco;-><init>(II)V

    invoke-interface {v0, v2, v1}, Ldck;->a(Ldco;Ljava/util/List;)V

    .line 267
    return-void
.end method
