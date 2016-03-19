.class final Lccs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccr;


# direct methods
.method constructor <init>(Lccr;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lccs;->a:Lccr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lccs;->a:Lccr;

    .line 1015
    iget-object v0, v0, Lccr;->c:Ljava/lang/Object;

    .line 37
    check-cast v0, Lcct;

    invoke-interface {v0}, Lcct;->am()V

    .line 38
    return-void
.end method
