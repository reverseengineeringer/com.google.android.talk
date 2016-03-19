.class public final Lcvu;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x238301abc50f5ac7L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lcvu;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    return-void
.end method
