.class public final Lffk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhpu;


# instance fields
.field private final a:Lhpz;

.field private final b:I


# direct methods
.method public constructor <init>(Lhpz;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lffk;->a:Lhpz;

    .line 16
    iput p2, p0, Lffk;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lffk;->b:I

    return v0
.end method

.method public a(Lhpw;)Lhpu;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lffk;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lhqb;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lffk;->a:Lhpz;

    iget v1, p0, Lffk;->b:I

    invoke-interface {v0, v1}, Lhpz;->a(I)Lhqb;

    move-result-object v0

    return-object v0
.end method
