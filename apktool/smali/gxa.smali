.class public final Lgxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgws;


# instance fields
.field a:Lgwz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lgwz;

    .line 1011
    invoke-direct {v0}, Lgwz;-><init>()V

    .line 22
    iput-object v0, p0, Lgxa;->a:Lgwz;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Latn;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgxa;->a:Lgwz;

    return-object v0
.end method
