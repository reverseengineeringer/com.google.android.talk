.class final Ldkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ldkj;


# direct methods
.method constructor <init>(Ldkj;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Ldkl;->a:Ldkj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Ldkl;->a:Ldkj;

    .line 1048
    iget-object v0, v0, Ldkj;->e:Lhaw;

    .line 148
    const/16 v1, 0x7bd

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Lhax;->d()V

    .line 150
    return-void
.end method
