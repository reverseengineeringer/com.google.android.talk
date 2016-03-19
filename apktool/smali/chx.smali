.class final Lchx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lchu;


# direct methods
.method constructor <init>(Lchu;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lchx;->a:Lchu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lchx;->a:Lchu;

    .line 1051
    iget-object v0, v0, Lchu;->b:Lcfc;

    .line 230
    invoke-virtual {v0}, Lcfc;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    const/16 v0, 0x62c

    invoke-static {v0}, Laal;->c(I)V

    .line 232
    iget-object v0, p0, Lchx;->a:Lchu;

    .line 2051
    iget-object v0, v0, Lchu;->f:Lcgn;

    .line 232
    invoke-virtual {v0}, Lcgn;->d()V

    .line 233
    iget-object v0, p0, Lchx;->a:Lchu;

    .line 3051
    iget-boolean v0, v0, Lchu;->g:Z

    .line 233
    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lchx;->a:Lchu;

    .line 4051
    iget-object v0, v0, Lchu;->b:Lcfc;

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcfc;->a(Z)V

    .line 236
    :cond_0
    iget-object v0, p0, Lchx;->a:Lchu;

    .line 5051
    iget-object v0, v0, Lchu;->f:Lcgn;

    .line 236
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcgn;->a(I)V

    .line 237
    iget-object v0, p0, Lchx;->a:Lchu;

    .line 6051
    iget-object v0, v0, Lchu;->e:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;->b()V

    .line 238
    iget-object v0, p0, Lchx;->a:Lchu;

    iget-object v1, p0, Lchx;->a:Lchu;

    .line 7051
    iget-object v1, v1, Lchu;->d:Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;

    .line 8051
    invoke-virtual {v0, v1}, Lchu;->a(Lcom/google/android/apps/hangouts/hangout/HangoutSelfMenu;)V

    .line 240
    :cond_1
    return-void
.end method
