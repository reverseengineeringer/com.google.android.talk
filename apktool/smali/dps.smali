.class public Ldps;
.super Ldpf;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 2051
    invoke-direct {p0}, Ldpf;-><init>()V

    .line 2052
    iput p1, p0, Ldps;->a:I

    .line 2053
    iput-boolean p2, p0, Ldps;->b:Z

    .line 2054
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 2059
    new-instance v6, Lkee;

    invoke-direct {v6}, Lkee;-><init>()V

    .line 2060
    const/4 v0, 0x0

    iget-object v5, p0, Ldps;->h:Lfak;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ldon;->a(Ljxk;ZLjava/lang/String;IILfak;)Lkdo;

    move-result-object v0

    iput-object v0, v6, Lkee;->requestHeader:Lkdo;

    .line 2062
    new-instance v0, Ljxn;

    invoke-direct {v0}, Ljxn;-><init>()V

    .line 2063
    iget v2, p0, Ldps;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Ljxn;->a:Ljava/lang/Integer;

    .line 2064
    iget-boolean v2, p0, Ldps;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Ljxn;->b:Ljava/lang/Boolean;

    .line 2066
    new-array v1, v1, [Ljxn;

    iput-object v1, v6, Lkee;->a:[Ljxn;

    .line 2067
    iget-object v1, v6, Lkee;->a:[Ljxn;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2068
    return-object v6
.end method

.method public a(Lbfd;Ldvn;)V
    .locals 0

    .prologue
    .line 2078
    invoke-static {p2}, Ldvd;->a(Ljava/lang/Exception;)V

    .line 2079
    return-void
.end method

.method public a(Lcwi;)Z
    .locals 2

    .prologue
    .line 2089
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2090
    invoke-virtual {p0, p1}, Ldps;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 2083
    check-cast p1, Ldps;

    .line 2084
    iget v0, p0, Ldps;->a:I

    iget v1, p1, Ldps;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ldps;->b:Z

    iget-boolean v1, p1, Ldps;->b:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2073
    const-string v0, "contacts/setconfigurationbit"

    return-object v0
.end method
