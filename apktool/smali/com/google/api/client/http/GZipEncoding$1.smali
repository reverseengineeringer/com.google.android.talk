.class Lcom/google/api/client/http/GZipEncoding$1;
.super Ljava/io/BufferedOutputStream;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/api/client/http/GZipEncoding;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/GZipEncoding;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/api/client/http/GZipEncoding$1;->this$0:Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/GZipEncoding$1;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
