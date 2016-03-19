.class public final Lgzv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfyr;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2017
    new-instance v0, Lfyr;

    invoke-direct {v0, p1}, Lfyr;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lgzv;->a:Lfyr;

    .line 2018
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lgzv;->a:Lfyr;

    invoke-virtual {v0, p1}, Lfyr;->a(Landroid/content/Intent;)V

    .line 1023
    return-void
.end method
