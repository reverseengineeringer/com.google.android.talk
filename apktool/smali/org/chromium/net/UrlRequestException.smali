.class public Lorg/chromium/net/UrlRequestException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field final a:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iput p2, p0, Lorg/chromium/net/UrlRequestException;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/net/UrlRequestException;->a:I

    .line 20
    return-void
.end method
