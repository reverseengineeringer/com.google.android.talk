.class public final Lhca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2020
    iput-object p1, p0, Lhca;->a:Ljava/lang/String;

    .line 2021
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lhca;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lhca;->a:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lfgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1037
    new-instance v0, Lhcc;

    invoke-direct {v0, p0, p1, p2}, Lhcc;-><init>(Lhca;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 1047
    return-void
.end method
