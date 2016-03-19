.class public final Lche;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhax;


# direct methods
.method public constructor <init>(Lhax;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lche;->a:Lhax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lche;->a:Lhax;

    invoke-interface {v0}, Lhax;->a()Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 243
    return-void
.end method
