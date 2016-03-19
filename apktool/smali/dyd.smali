.class final Ldyd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lieh;


# instance fields
.field final synthetic a:Ldyc;


# direct methods
.method constructor <init>(Ldyc;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ldyd;->a:Ldyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 5

    .prologue
    .line 1033
    sget-boolean v0, Ldyc;->a:Z

    .line 79
    if-eqz v0, :cond_0

    .line 80
    long-to-double v0, p1

    long-to-double v2, p3

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Upload progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    return-void
.end method
