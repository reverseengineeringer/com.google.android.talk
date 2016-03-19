.class final Ligj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private volatile b:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Ligj;->a:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Ligj;->b:Z

    return v0
.end method
