.class final Lmha;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/StringBuilder;

.field final synthetic d:Lmgz;


# direct methods
.method public constructor <init>(Lmgz;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1080
    iput-object p1, p0, Lmha;->d:Lmgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1081
    iput-object p2, p0, Lmha;->a:Ljava/lang/String;

    .line 1082
    const/4 v0, 0x0

    iput v0, p0, Lmha;->b:I

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lmha;->c:Ljava/lang/StringBuilder;

    .line 1084
    return-void
.end method
