.class final Lcqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcpx;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcqb;


# direct methods
.method constructor <init>(Lcqb;ZLcpx;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcqe;->f:Lcqb;

    iput-boolean p2, p0, Lcqe;->a:Z

    iput-object p3, p0, Lcqe;->b:Lcpx;

    iput-object p4, p0, Lcqe;->c:Ljava/lang/String;

    iput-object p5, p0, Lcqe;->d:Ljava/lang/String;

    iput p6, p0, Lcqe;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 199
    iget-object v0, p0, Lcqe;->f:Lcqb;

    iget-boolean v1, p0, Lcqe;->a:Z

    iget-object v2, p0, Lcqe;->b:Lcpx;

    iget-object v3, p0, Lcqe;->c:Ljava/lang/String;

    iget-object v4, p0, Lcqe;->d:Ljava/lang/String;

    iget v5, p0, Lcqe;->e:I

    invoke-static/range {v0 .. v5}, Lcqb;->a(Lcqb;ZLcpx;Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    return-void
.end method
