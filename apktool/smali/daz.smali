.class final Ldaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lfce;

.field final synthetic b:Ldas;


# direct methods
.method constructor <init>(Ldas;Lfce;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Ldaz;->b:Ldas;

    iput-object p2, p0, Ldaz;->a:Lfce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Ldaz;->a:Lfce;

    invoke-virtual {v0}, Lfce;->showContextMenu()Z

    move-result v0

    return v0
.end method
