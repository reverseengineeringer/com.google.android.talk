.class final Lccn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leph;


# instance fields
.field final synthetic a:Lccm;


# direct methods
.method constructor <init>(Lccm;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lccn;->a:Lccm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lccn;->a:Lccm;

    .line 1016
    iget-object v0, v0, Lccm;->c:Ljava/lang/Object;

    .line 44
    check-cast v0, Lcco;

    invoke-interface {v0}, Lcco;->E()V

    .line 45
    return-void
.end method
