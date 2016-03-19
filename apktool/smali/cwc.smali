.class final Lcwc;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcwb;


# direct methods
.method constructor <init>(Lcwb;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcwc;->a:Lcwb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcwc;->a:Lcwb;

    invoke-virtual {v0}, Lcwb;->f()V

    .line 79
    return-void
.end method
