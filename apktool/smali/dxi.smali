.class public final Ldxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leff;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Ldxi;->a:I

    .line 25
    iput-boolean p1, p0, Ldxi;->c:Z

    .line 26
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lezi;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldxi;->b:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Ldxi;->a:I

    .line 40
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Ldxi;->c:Z

    return v0
.end method

.method public a_(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Ldxi;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Ldxi;->a:I

    return v0
.end method

.method public d()Lcwi;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ldxh;

    invoke-direct {v0, p0}, Ldxh;-><init>(Ldxi;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-static {p0}, Laal;->f(Ljava/lang/Object;)Lkno;

    move-result-object v0

    const-string v1, "shouldRetry"

    iget-boolean v2, p0, Ldxi;->c:Z

    .line 55
    invoke-virtual {v0, v1, v2}, Lkno;->a(Ljava/lang/String;Z)Lkno;

    move-result-object v0

    const-string v1, "creationStack"

    iget-object v2, p0, Ldxi;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1, v2}, Lkno;->a(Ljava/lang/String;Ljava/lang/Object;)Lkno;

    move-result-object v0

    const-string v1, "originStack"

    iget-object v2, p0, Ldxi;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1, v2}, Lkno;->a(Ljava/lang/String;Ljava/lang/Object;)Lkno;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lkno;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
