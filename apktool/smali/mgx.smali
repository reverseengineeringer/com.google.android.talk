.class public final Lmgx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput-object p1, p0, Lmgx;->a:Ljava/io/InputStream;

    .line 885
    :try_start_0
    invoke-direct {p0}, Lmgx;->b()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 890
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "IOException in CopyInputStream"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 891
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 898
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmgx;->b:Ljava/io/ByteArrayOutputStream;

    .line 901
    const/16 v0, 0x100

    new-array v2, v0, [B

    move v0, v1

    .line 903
    :goto_0
    const/4 v3, -0x1

    iget-object v4, p0, Lmgx;->a:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 905
    add-int/lit16 v0, v0, 0x100

    .line 909
    iget-object v3, p0, Lmgx;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v2, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 911
    :cond_0
    iget-object v1, p0, Lmgx;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 913
    return v0
.end method


# virtual methods
.method public a()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 918
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lmgx;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
