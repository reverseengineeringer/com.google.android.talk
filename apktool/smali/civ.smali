.class final Lciv;
.super Lauu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauu",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lciu;


# direct methods
.method constructor <init>(Lciu;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lciv;->a:Lciu;

    invoke-direct {p0}, Lauu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 104
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1112
    iget-object v0, p0, Lciv;->a:Lciu;

    .line 2049
    iget-object v0, v0, Lciu;->h:Landroid/widget/ImageView;

    .line 1112
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1113
    iget-object v0, p0, Lciv;->a:Lciu;

    iget-object v0, v0, Lciu;->f:Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;

    iget-object v1, p0, Lciv;->a:Lciu;

    iget-object v1, v1, Lciu;->a:Lhkx;

    invoke-virtual {v1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/hangout/FocusedParticipantView;->a(Ljava/lang/String;)V

    .line 1114
    iget-object v0, p0, Lciv;->a:Lciu;

    iput-object p1, v0, Lciu;->m:Landroid/graphics/Bitmap;

    .line 1115
    iget-object v0, p0, Lciv;->a:Lciu;

    iget-object v1, p0, Lciv;->a:Lciu;

    iget-object v1, v1, Lciu;->m:Landroid/graphics/Bitmap;

    invoke-static {v1}, Leye;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3049
    iput-object v1, v0, Lciu;->n:Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method
