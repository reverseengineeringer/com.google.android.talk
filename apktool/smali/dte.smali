.class public final Ldte;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkes;",
        "Lket;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final v:I


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 22
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "conversations/settyping"

    sget-object v4, Lefh;->a:Lefh;

    new-instance v5, Lkes;

    invoke-direct {v5}, Lkes;-><init>()V

    new-instance v6, Lket;

    invoke-direct {v6}, Lket;-><init>()V

    move-object v0, p0

    .line 22
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 30
    iput-object p2, p0, Ldte;->b:Ljava/lang/String;

    .line 31
    iput p3, p0, Ldte;->v:I

    .line 32
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldte;->a:I

    .line 33
    return-void
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lket;

    .line 1049
    invoke-static {p1}, Ldsw;->parseFrom(Lket;)Ldqf;

    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected synthetic b(Llyi;)V
    .locals 2

    .prologue
    .line 13
    check-cast p1, Lkes;

    .line 2037
    iget-object v0, p0, Ldte;->b:Ljava/lang/String;

    invoke-static {v0}, Ldte;->a(Ljava/lang/String;)V

    .line 2038
    new-instance v0, Ldmn;

    invoke-direct {v0}, Ldmn;-><init>()V

    iget v1, p0, Ldte;->a:I

    .line 2039
    invoke-virtual {v0, v1}, Ldmn;->a(I)Ldmn;

    move-result-object v0

    .line 2040
    invoke-virtual {v0}, Ldmn;->b()Ldmm;

    move-result-object v0

    .line 2041
    invoke-virtual {p0, v0}, Ldte;->a(Ldmm;)Lkdo;

    move-result-object v0

    iput-object v0, p1, Lkes;->requestHeader:Lkdo;

    .line 2043
    iget-object v0, p0, Ldte;->b:Ljava/lang/String;

    invoke-static {v0}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v0

    iput-object v0, p1, Lkes;->a:Ljxw;

    .line 2044
    iget v0, p0, Ldte;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lkes;->b:Ljava/lang/Integer;

    .line 13
    return-void
.end method
