.class final Lcnu;
.super Lhmt;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcnt;


# direct methods
.method constructor <init>(Lcnt;Z)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcnu;->b:Lcnt;

    iput-boolean p2, p0, Lcnu;->a:Z

    invoke-direct {p0}, Lhmt;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcnu;->a:Z

    return v0
.end method
