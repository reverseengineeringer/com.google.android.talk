.class final Leuy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Levg;

.field final synthetic b:I

.field final synthetic c:Leux;


# direct methods
.method constructor <init>(Leux;Levg;I)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Leuy;->c:Leux;

    iput-object p2, p0, Leuy;->a:Levg;

    iput p3, p0, Leuy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Leuy;->a:Levg;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Leuy;->a:Levg;

    iget v1, p0, Leuy;->b:I

    invoke-interface {v0, v1}, Levg;->a(I)V

    .line 74
    :cond_0
    return-void
.end method
