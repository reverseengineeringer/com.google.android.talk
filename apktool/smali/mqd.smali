.class final Lmqd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmpz;


# instance fields
.field final synthetic a:Lmqc;


# direct methods
.method constructor <init>(Lmqc;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lmqd;->a:Lmqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lmqd;->a:Lmqc;

    iget-object v0, v0, Lmqc;->b:Lmqa;

    iget-object v0, v0, Lmqa;->f:Lorg/chromium/net/UploadDataProvider;

    iget-object v1, p0, Lmqd;->a:Lmqc;

    iget-object v1, v1, Lmqc;->b:Lmqa;

    iget-object v2, p0, Lmqd;->a:Lmqc;

    iget-object v2, v2, Lmqc;->b:Lmqa;

    iget-object v2, v2, Lmqa;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UploadDataProvider;->a(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V

    .line 297
    return-void
.end method
