.class final Lbpo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field final synthetic c:Lbng;


# direct methods
.method public constructor <init>(Lbng;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1037
    iput-object p1, p0, Lbpo;->c:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-object p2, p0, Lbpo;->a:Ljava/lang/String;

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbpo;->b:J

    .line 1040
    return-void
.end method
