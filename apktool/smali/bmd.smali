.class final Lbmd;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lblw;


# direct methods
.method constructor <init>(Lblw;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lbmd;->b:Lblw;

    iput p3, p0, Lbmd;->a:I

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lbme;

    invoke-direct {v0, p0}, Lbme;-><init>(Lbmd;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 192
    invoke-virtual {v0, v1}, Lbme;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    return-void
.end method
