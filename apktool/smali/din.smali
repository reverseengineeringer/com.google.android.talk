.class public final Ldin;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lhtf;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ldio;

    invoke-direct {v0, p0}, Ldio;-><init>(Ldin;)V

    return-object v0
.end method
