.class public final Lfbm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Lcom/google/android/apps/hangouts/views/EasterEggView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/EasterEggView;Lbfd;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lfbm;->b:Lcom/google/android/apps/hangouts/views/EasterEggView;

    iput-object p2, p0, Lfbm;->a:Lbfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1039
    sget-object v0, Lcom/google/android/apps/hangouts/views/EasterEggView;->a:Ljava/util/Random;

    .line 268
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget v0, Laal;->ck:I

    .line 272
    :goto_0
    iget-object v1, p0, Lfbm;->b:Lcom/google/android/apps/hangouts/views/EasterEggView;

    iget-object v2, p0, Lfbm;->a:Lbfd;

    iget-object v3, p0, Lfbm;->b:Lcom/google/android/apps/hangouts/views/EasterEggView;

    .line 2039
    iget-object v3, v3, Lcom/google/android/apps/hangouts/views/EasterEggView;->b:Landroid/content/res/TypedArray;

    .line 3039
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/apps/hangouts/views/EasterEggView;->a(Lbfd;Landroid/content/res/TypedArray;I)V

    .line 274
    iget-object v0, p0, Lfbm;->b:Lcom/google/android/apps/hangouts/views/EasterEggView;

    .line 4039
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/EasterEggView;->e:Landroid/os/Handler;

    .line 274
    const-wide/16 v2, 0x190

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void

    .line 270
    :cond_0
    sget v0, Laal;->cj:I

    goto :goto_0
.end method
