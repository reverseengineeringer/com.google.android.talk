.class final Lepd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lepc;


# direct methods
.method constructor <init>(Lepc;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lepd;->a:Lepc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lepd;->a:Lepc;

    iget-object v1, p0, Lepd;->a:Lepc;

    .line 1050
    iget-object v1, v1, Lepc;->a:Lepa;

    .line 129
    invoke-virtual {v0, v1}, Lepc;->b(Lepa;)V

    .line 130
    return-void
.end method
