.class public final Ldtd;
.super Ldom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldom",
        "<",
        "Lkel;",
        "Lkem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final v:Z

.field private final w:I


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;ZI)V
    .locals 7

    .prologue
    .line 26
    invoke-static {}, Lihw;->newBuilder()Lihx;

    move-result-object v0

    invoke-virtual {p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->a(Ljava/lang/String;)Lihx;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lbfd;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lihx;->b(Ljava/lang/String;)Lihx;

    move-result-object v0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Lihx;->a(Z)Lihx;

    move-result-object v0

    invoke-virtual {v0}, Lihx;->a()Lihw;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "conversations/setfocus"

    sget-object v4, Lefh;->a:Lefh;

    new-instance v5, Lkel;

    invoke-direct {v5}, Lkel;-><init>()V

    new-instance v6, Lkem;

    invoke-direct {v6}, Lkem;-><init>()V

    move-object v0, p0

    .line 26
    invoke-direct/range {v0 .. v6}, Ldom;-><init>(Lihw;Leff;Ljava/lang/String;Lefh;Llyi;Llyi;)V

    .line 34
    iput-object p2, p0, Ldtd;->b:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Ldtd;->v:Z

    .line 37
    if-lez p4, :cond_0

    :goto_0
    iput p4, p0, Ldtd;->w:I

    .line 38
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iput v0, p0, Ldtd;->a:I

    .line 39
    return-void

    .line 37
    :cond_0
    const/16 p4, 0x12c

    goto :goto_0
.end method


# virtual methods
.method protected synthetic a(Llyi;)Ldqf;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lkem;

    .line 1057
    invoke-static {p1}, Ldss;->parseFrom(Lkem;)Ldqf;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method protected synthetic b(Llyi;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 14
    check-cast p1, Lkel;

    .line 2043
    iget-object v0, p0, Ldtd;->b:Ljava/lang/String;

    invoke-static {v0}, Ldtd;->a(Ljava/lang/String;)V

    .line 2044
    new-instance v0, Ldmn;

    invoke-direct {v0}, Ldmn;-><init>()V

    iget v2, p0, Ldtd;->a:I

    .line 2045
    invoke-virtual {v0, v2}, Ldmn;->a(I)Ldmn;

    move-result-object v0

    .line 2046
    invoke-virtual {v0}, Ldmn;->b()Ldmm;

    move-result-object v0

    .line 2047
    invoke-virtual {p0, v0}, Ldtd;->a(Ldmm;)Lkdo;

    move-result-object v0

    iput-object v0, p1, Lkel;->requestHeader:Lkdo;

    .line 2049
    iget-object v0, p0, Ldtd;->b:Ljava/lang/String;

    invoke-static {v0}, Ldon;->a(Ljava/lang/String;)Ljxw;

    move-result-object v0

    iput-object v0, p1, Lkel;->a:Ljxw;

    .line 2050
    iget-boolean v0, p0, Ldtd;->v:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lkel;->b:Ljava/lang/Integer;

    .line 2051
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lkel;->d:Ljava/lang/Boolean;

    .line 2052
    iget v0, p0, Ldtd;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lkel;->c:Ljava/lang/Integer;

    .line 14
    return-void

    .line 2050
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
