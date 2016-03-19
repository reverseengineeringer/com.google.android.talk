.class public final Lgyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgys;


# instance fields
.field a:Lgyx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lgyx;

    .line 1011
    invoke-direct {v0}, Lgyx;-><init>()V

    .line 22
    iput-object v0, p0, Lgyy;->a:Lgyx;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Latn;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lgyy;->a:Lgyx;

    return-object v0
.end method
