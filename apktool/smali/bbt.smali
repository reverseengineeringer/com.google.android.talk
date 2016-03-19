.class final Lbbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbbq;


# direct methods
.method constructor <init>(Lbbq;I)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lbbt;->b:Lbbq;

    iput p2, p0, Lbbt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lbbt;->b:Lbbq;

    .line 1022
    iget-object v0, v0, Lbbq;->a:Lawm;

    .line 120
    iget v1, p0, Lbbt;->a:I

    invoke-interface {v0, v1}, Lawm;->b(I)V

    .line 121
    return-void
.end method
