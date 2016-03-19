.class final Leub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leua;


# direct methods
.method constructor <init>(Leua;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Leub;->a:Leua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Leub;->a:Leua;

    .line 1070
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leua;->c(Z)Z

    .line 629
    iget-object v0, p0, Leub;->a:Leua;

    .line 2070
    const/4 v1, 0x0

    iput-object v1, v0, Leua;->k:Ljava/lang/Runnable;

    .line 630
    return-void
.end method
