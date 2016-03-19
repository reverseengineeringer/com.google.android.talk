.class public final Ldia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgxq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgxq",
        "<",
        "Lavb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgxk;


# direct methods
.method public constructor <init>(Lgxk;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Ldia;->a:Lgxk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lavb;)V
    .locals 1

    .prologue
    .line 1089
    iget-object v0, p0, Ldia;->a:Lgxk;

    invoke-interface {v0}, Lgxk;->b()V

    .line 85
    return-void
.end method
