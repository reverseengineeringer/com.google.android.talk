.class public final Lfaw;
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
.field final synthetic a:Lcom/google/android/apps/hangouts/views/AvatarView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/AvatarView;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lfaw;->a:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-direct {p0}, Lauu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 92
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1095
    iget-object v0, p0, Lfaw;->a:Lcom/google/android/apps/hangouts/views/AvatarView;

    .line 2050
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/hangouts/views/AvatarView;->b:Z

    .line 1096
    iget-object v0, p0, Lfaw;->a:Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Landroid/graphics/Bitmap;)V

    .line 92
    return-void
.end method
