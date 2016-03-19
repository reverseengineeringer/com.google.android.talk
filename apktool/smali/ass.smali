.class final Lass;
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
.field final a:I

.field private final b:Landroid/os/Handler;

.field private final d:J

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lauu;-><init>()V

    .line 254
    iput-object p1, p0, Lass;->b:Landroid/os/Handler;

    .line 255
    iput p2, p0, Lass;->a:I

    .line 256
    iput-wide p3, p0, Lass;->d:J

    .line 257
    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lass;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 247
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1265
    iput-object p1, p0, Lass;->e:Landroid/graphics/Bitmap;

    .line 1266
    iget-object v0, p0, Lass;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1267
    iget-object v1, p0, Lass;->b:Landroid/os/Handler;

    iget-wide v2, p0, Lass;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 247
    return-void
.end method
