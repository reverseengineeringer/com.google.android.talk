.class public Ldly;
.super Limi;
.source "SourceFile"


# instance fields
.field public final j:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Limi;-><init>()V

    .line 13
    new-instance v0, Lhqo;

    iget-object v1, p0, Ldly;->m:Lipg;

    invoke-direct {v0, p0, v1}, Lhqo;-><init>(Landroid/app/Activity;Liog;)V

    iget-object v1, p0, Ldly;->l:Lilh;

    .line 15
    invoke-virtual {v0, v1}, Lhqo;->a(Lilh;)Lhqo;

    move-result-object v0

    iput-object v0, p0, Ldly;->j:Lhpu;

    .line 13
    return-void
.end method


# virtual methods
.method public g()V
    .locals 0

    .prologue
    .line 18
    invoke-virtual {p0}, Ldly;->finish()V

    .line 19
    return-void
.end method
