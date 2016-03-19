.class final Ldgd;
.super Ldgz;
.source "SourceFile"


# instance fields
.field final synthetic a:Ldfq;


# direct methods
.method constructor <init>(Ldfq;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Ldgd;->a:Ldfq;

    invoke-direct {p0, p2}, Ldgz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Ldgd;->a:Ldfq;

    .line 1055
    iget-object v0, v0, Ldfq;->d:Ldiu;

    .line 392
    invoke-virtual {v0}, Ldiu;->b()V

    .line 393
    return-void
.end method
