.class final Lccf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhv;


# instance fields
.field final synthetic a:Lcce;


# direct methods
.method constructor <init>(Lcce;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lccf;->a:Lcce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 3

    .prologue
    .line 1188
    const-string v0, "Expected null"

    invoke-static {v0, p2}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Leys;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lccf;->a:Lcce;

    iget-object v1, v1, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 2071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->d:Lczb;

    .line 267
    if-eqz v1, :cond_0

    iget-object v1, p0, Lccf;->a:Lcce;

    iget-object v1, v1, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 3071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->d:Lczb;

    .line 267
    invoke-virtual {p4}, Lbhs;->l()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lczb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lccf;->a:Lcce;

    iget-object v1, v1, Lcce;->a:Lcom/google/android/apps/hangouts/fragments/InvitationFragment;

    .line 4071
    iget-object v1, v1, Lcom/google/android/apps/hangouts/fragments/InvitationFragment;->h:Landroid/widget/ImageView;

    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
