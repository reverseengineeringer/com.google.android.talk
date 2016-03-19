.class public final Lmqq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lmqq;->a:Z

    .line 44
    iput p2, p0, Lmqq;->b:I

    .line 45
    iput p3, p0, Lmqq;->c:I

    .line 46
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lmqq;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lmqq;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lmqq;->c:I

    return v0
.end method
