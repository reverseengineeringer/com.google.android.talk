.class final Lhdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhdi;


# direct methods
.method constructor <init>(Lhdi;I)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lhdk;->b:Lhdi;

    iput p2, p0, Lhdk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lhdk;->b:Lhdi;

    iget-object v0, v0, Lhdi;->c:Lhds;

    invoke-interface {v0}, Lhds;->a()V

    .line 184
    return-void
.end method
