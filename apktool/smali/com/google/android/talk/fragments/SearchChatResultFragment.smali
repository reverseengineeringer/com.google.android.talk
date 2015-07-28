.class public Lcom/google/android/talk/fragments/SearchChatResultFragment;
.super Landroid/app/Fragment;
.source "SearchChatResultFragment.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/fragments/SearchChatResultFragment$5;,
        Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;,
        Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;
    }
.end annotation


# static fields
.field private static final AUTHOR_COLORS:[Ljava/lang/String;

.field private static final MESSAGE_PREFIX_LENGTH:I

.field private static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAccountId:J

.field private mCcHeading:Ljava/lang/String;

.field private mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mConversationId:Ljava/lang/Long;

.field private mCurrentColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailMatcher:Ljava/util/regex/Matcher;

.field private final mExpandedMessageIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardString:Ljava/lang/String;

.field private mGmail:Lcom/google/android/talk/GmailProviderWrapper;

.field private mHandler:Landroid/os/Handler;

.field private mHasCcAddresses:Z

.field private mLastFromAddress:Ljava/lang/String;

.field private mLastPresenceEmail:Ljava/lang/String;

.field private mLastPresencePath:Ljava/lang/String;

.field private mLoaded:Z

.field private mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

.field private mPresencePath:Ljava/lang/String;

.field private mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

.field private mReplyByChatString:Ljava/lang/String;

.field private mReplyString:Ljava/lang/String;

.field private mToHeading:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "m"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->MESSAGE_PREFIX_LENGTH:I

    .line 501
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 1317
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#00681c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#790619"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#5b1094"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#c88900"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#cc0060"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#008391"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#009486"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#b90038"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#846600"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#330099"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->AUTHOR_COLORS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 292
    const-string v0, "\\\"(.*)\\\"\\s*<(.*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mEmailMatcher:Ljava/util/regex/Matcher;

    .line 318
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;

    .line 322
    iput v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    .line 338
    new-instance v0, Lcom/google/android/talk/fragments/SearchChatResultFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$1;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHandler:Landroid/os/Handler;

    .line 357
    iput-boolean v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z

    .line 1331
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCurrentColorMap:Ljava/util/Map;

    .line 1358
    const-string v0, "file:///android_asset/presence_offline.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    .line 1359
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresencePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/fragments/SearchChatResultFragment;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->launchReplyOrForward(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->launchReplyByChat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mForwardString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyByChatString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Z

    .prologue
    .line 68
    invoke-direct/range {p0 .. p8}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addExpandedBody(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/talk/fragments/SearchChatResultFragment;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSnippet(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/ContactInfoQuery;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/talk/fragments/SearchChatResultFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/talk/fragments/SearchChatResultFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # Ljava/lang/StringBuilder;
    .param p2, "x2"    # Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addCollapsedHeaders(Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/fragments/SearchChatResultFragment;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;
    .param p1, "x1"    # Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/SearchChatResultFragment;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;

    return-object v0
.end method

.method private addAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1244
    array-length v1, p3

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    add-int/lit8 v2, v1, -0x1

    .line 1249
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1250
    aget-object v3, p3, v0

    .line 1251
    invoke-direct {p0, v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getDisplayAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    if-ge v0, v2, :cond_0

    .line 1253
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_1
    return-void
.end method

.method private addCollapsedHeaders(Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V
    .locals 19
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "messageCursor"    # Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .param p3, "firstCollapsed"    # I
    .param p4, "lastCollapsed"    # I

    .prologue
    .line 901
    const/16 v17, 0x0

    .line 902
    .local v17, "lastLabelIds":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/GmailProviderWrapper;->newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v16

    .line 905
    .local v16, "labelIdsSplitter":Landroid/text/TextUtils$StringSplitter;
    move/from16 v13, p3

    .local v13, "i":I
    :goto_0
    move/from16 v0, p4

    if-gt v13, v0, :cond_1

    .line 906
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 908
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getMessageId()J

    move-result-wide v14

    .line 909
    .local v14, "id":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 910
    .local v4, "messageId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getRawLabelIds()Ljava/lang/String;

    move-result-object v18

    .line 911
    .local v18, "rawLabelIds":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 912
    move-object/from16 v17, v18

    .line 913
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 916
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getDateReceivedMs()J

    move-result-wide v10

    .line 917
    .local v10, "date":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v10, v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, "dateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSenderPersonal(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getUnencodedSenderEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildFromDiv(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 927
    .local v12, "fromDiv":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSnippet(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 929
    .local v7, "snippet":Ljava/lang/String;
    const-string v9, "toggleHeader"

    .line 931
    .local v9, "headerTapFunction":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "snippetDiv"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addCollapsedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 939
    .end local v4    # "messageId":Ljava/lang/String;
    .end local v7    # "snippet":Ljava/lang/String;
    .end local v8    # "dateStr":Ljava/lang/String;
    .end local v9    # "headerTapFunction":Ljava/lang/String;
    .end local v10    # "date":J
    .end local v12    # "fromDiv":Ljava/lang/CharSequence;
    .end local v14    # "id":J
    .end local v18    # "rawLabelIds":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private addCollapsedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "fromDiv"    # Ljava/lang/String;
    .param p4, "style"    # Ljava/lang/String;
    .param p5, "line2Str"    # Ljava/lang/String;
    .param p6, "dateStr"    # Ljava/lang/String;
    .param p7, "headerTapFunction"    # Ljava/lang/String;

    .prologue
    .line 1101
    const-string v0, "<table class=\"tableHeader\" id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    const-string v0, "\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\"><tr><td>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-direct/range {p0 .. p7}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addMessageHeader(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v0, "</td><tr><td  class=\"bodyCell\"><div id=\"a:body\"></div></td></tr></table>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    return-void
.end method

.method private addExpandedBody(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "replyStr"    # Ljava/lang/String;
    .param p5, "forwardStr"    # Ljava/lang/String;
    .param p6, "replyByChatStr"    # Ljava/lang/String;
    .param p7, "containsExternalResources"    # Z
    .param p8, "isLastMessage"    # Z

    .prologue
    .line 1053
    const-string v0, "<div class=\"bodyDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    const-string v0, "</div>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p8

    .line 1058
    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1059
    return-void
.end method

.method private addExpandedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "fromDiv"    # Ljava/lang/String;
    .param p4, "style"    # Ljava/lang/String;
    .param p5, "line2Str"    # Ljava/lang/String;
    .param p6, "dateStr"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "replyStr"    # Ljava/lang/String;
    .param p9, "forwardStr"    # Ljava/lang/String;
    .param p10, "replyByChatStr"    # Ljava/lang/String;
    .param p11, "containsExternalResources"    # Z
    .param p12, "isLastMessage"    # Z

    .prologue
    .line 1032
    const-string v0, "<table id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v0, "\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\"><tr><td>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    const-string v7, "toggleHeader"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addMessageHeader(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v0, "</td><tr><td  class=\"bodyCell\"><div id=\"a:body\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    .line 1039
    invoke-direct/range {v0 .. v8}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addExpandedBody(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1042
    const-string v0, "</div></td></tr></table>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    return-void
.end method

.method private addFooter(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "replyStr"    # Ljava/lang/String;
    .param p4, "forwardStr"    # Ljava/lang/String;
    .param p5, "replyByChatStr"    # Ljava/lang/String;
    .param p6, "isLastMessage"    # Z

    .prologue
    .line 1064
    if-eqz p6, :cond_1

    const-string v0, "<div class=\"messageFooterDiv2\">"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    iget-boolean v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHasCcAddresses:Z

    if-nez v0, :cond_0

    .line 1067
    const-string v0, "<table width=\"100%\"><tr><td><button class=\"footerButton\" onClick=\"window.gmail.replyByChat(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    const-string v0, "\')\"><div class=\"footerTextElementDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :cond_0
    const-string v0, "</div></button><button class=\"footerButton\" onClick=\"window.gmail.reply(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    const-string v0, "\')\"><div class=\"footerTextElementDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const-string v0, "</div></button><button class=\"footerButton\" onClick=\"window.gmail.forward(\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const-string v0, "\')\"><div class=\"footerTextElementDiv\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, "</div></button></td></tr></table></div>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    return-void

    .line 1064
    :cond_1
    const-string v0, "<div class=\"messageFooterDiv1\">"

    goto :goto_0
.end method

.method private addMessageHeader(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "fromDiv"    # Ljava/lang/String;
    .param p4, "style"    # Ljava/lang/String;
    .param p5, "line2Str"    # Ljava/lang/String;
    .param p6, "dateStr"    # Ljava/lang/String;
    .param p7, "toggleFunction"    # Ljava/lang/String;

    .prologue
    .line 1002
    const-string v0, "<div class=\"headerDiv\"><table border=\"0\" cellpadding=\"0\"><tr>%s</tr></table><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td width=\'99%%\' class=\"%s\"><div id=\"a:line2\">%s</div></td><td style=\'white-space: nowrap; float:right\' valign=\'top\' align=\"right\">%s</td></tr></table></div>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    return-void
.end method

.method private buildConversationIfLoaded()V
    .locals 36

    .prologue
    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 689
    .local v21, "activity":Landroid/app/Activity;
    if-nez v21, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-object/from16 v33, v0

    .line 693
    .local v33, "messageCursor":Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->count()I

    move-result v22

    .line 695
    .local v22, "count":I
    sget-object v4, Lcom/google/android/talk/fragments/SearchChatResultFragment$5;->$SwitchMap$com$google$android$talk$GmailProviderWrapper$CursorStatus:[I

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 718
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const v4, 0x8000

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 719
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 721
    const-string v4, "<html><head><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/styles.css\"><script type=\"text/javascript\" src=\"file:///android_asset/script.js\"></script></head><body>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const/16 v31, 0x0

    .line 724
    .local v31, "lastLabelIds":Ljava/lang/String;
    add-int/lit8 v32, v22, -0x1

    .line 725
    .local v32, "lastMessage":I
    const/16 v35, 0x0

    .line 729
    .local v35, "whichMessage":I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getGmailAppName()Ljava/lang/CharSequence;

    move-result-object v27

    .line 730
    .local v27, "gmailAppName":Ljava/lang/CharSequence;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 731
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;

    .line 736
    :goto_2
    const v4, 0x7f0c00aa

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mForwardString:Ljava/lang/String;

    .line 737
    const v4, 0x7f0c00ab

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyByChatString:Ljava/lang/String;

    .line 738
    const v4, 0x7f0c00ac

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mToHeading:Ljava/lang/String;

    .line 739
    const v4, 0x7f0c00ad

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCcHeading:Ljava/lang/String;

    .line 741
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;

    .line 742
    .local v12, "replyStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyByChatString:Ljava/lang/String;

    .line 743
    .local v14, "replyByChatStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mForwardString:Ljava/lang/String;

    .line 745
    .local v13, "forwardStr":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/talk/GmailProviderWrapper;->newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v30

    .line 748
    .local v30, "labelIdsSplitter":Landroid/text/TextUtils$StringSplitter;
    const/16 v25, -0x1

    .line 754
    .local v25, "firstCollapsed":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    .line 755
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 792
    :goto_3
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 803
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getMessageId()J

    move-result-wide v28

    .line 804
    .local v28, "id":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 805
    .local v6, "messageId":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v11

    .line 806
    .local v11, "body":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getRawLabelIds()Ljava/lang/String;

    move-result-object v34

    .line 807
    .local v34, "rawLabelIds":Ljava/lang/String;
    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 808
    move-object/from16 v31, v34

    .line 809
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 812
    :cond_4
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getDateReceivedMs()J

    move-result-wide v23

    .line 813
    .local v23, "date":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-static {v4, v0, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 816
    .local v10, "dateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSenderPersonal(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getUnencodedSenderEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v4, v7, v6}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildFromDiv(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v26

    .line 821
    .local v26, "fromDiv":Ljava/lang/CharSequence;
    move/from16 v0, v35

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 822
    if-ltz v25, :cond_5

    .line 823
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v25

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->maybeGenerateSuperCollapse(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/StringBuilder;II)V

    .line 824
    const/16 v25, -0x1

    .line 826
    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "addressDiv"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getBodyEmbedsExternalResources()Z

    move-result v15

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_8

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addExpandedMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 843
    :cond_6
    :goto_5
    add-int/lit8 v35, v35, 0x1

    .line 844
    goto/16 :goto_3

    .line 698
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "messageId":Ljava/lang/String;
    .end local v10    # "dateStr":Ljava/lang/String;
    .end local v11    # "body":Ljava/lang/String;
    .end local v12    # "replyStr":Ljava/lang/String;
    .end local v13    # "forwardStr":Ljava/lang/String;
    .end local v14    # "replyByChatStr":Ljava/lang/String;
    .end local v23    # "date":J
    .end local v25    # "firstCollapsed":I
    .end local v26    # "fromDiv":Ljava/lang/CharSequence;
    .end local v27    # "gmailAppName":Ljava/lang/CharSequence;
    .end local v28    # "id":J
    .end local v30    # "labelIdsSplitter":Landroid/text/TextUtils$StringSplitter;
    .end local v31    # "lastLabelIds":Ljava/lang/String;
    .end local v32    # "lastMessage":I
    .end local v34    # "rawLabelIds":Ljava/lang/String;
    .end local v35    # "whichMessage":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    if-nez v4, :cond_0

    .line 699
    new-instance v4, Lcom/google/android/talk/NetworkProgressMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/google/android/talk/NetworkProgressMonitor;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Lcom/google/android/talk/IProgressMonitor;->beginTask(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    .line 706
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    if-eqz v4, :cond_2

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    invoke-interface {v4}, Lcom/google/android/talk/IProgressMonitor;->done()V

    .line 708
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mProgressMonitor:Lcom/google/android/talk/IProgressMonitor;

    goto/16 :goto_1

    .line 712
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->showRetryAlert()V

    goto/16 :goto_1

    .line 734
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v27    # "gmailAppName":Ljava/lang/CharSequence;
    .restart local v31    # "lastLabelIds":Ljava/lang/String;
    .restart local v32    # "lastMessage":I
    .restart local v35    # "whichMessage":I
    :cond_7
    const v4, 0x7f0c00a9

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v27, v7, v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;

    goto/16 :goto_2

    .line 826
    .restart local v6    # "messageId":Ljava/lang/String;
    .restart local v10    # "dateStr":Ljava/lang/String;
    .restart local v11    # "body":Ljava/lang/String;
    .restart local v12    # "replyStr":Ljava/lang/String;
    .restart local v13    # "forwardStr":Ljava/lang/String;
    .restart local v14    # "replyByChatStr":Ljava/lang/String;
    .restart local v23    # "date":J
    .restart local v25    # "firstCollapsed":I
    .restart local v26    # "fromDiv":Ljava/lang/CharSequence;
    .restart local v28    # "id":J
    .restart local v30    # "labelIdsSplitter":Landroid/text/TextUtils$StringSplitter;
    .restart local v34    # "rawLabelIds":Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    .line 839
    :cond_9
    if-gez v25, :cond_6

    .line 840
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->position()I

    move-result v25

    goto :goto_5

    .line 846
    .end local v6    # "messageId":Ljava/lang/String;
    .end local v10    # "dateStr":Ljava/lang/String;
    .end local v11    # "body":Ljava/lang/String;
    .end local v23    # "date":J
    .end local v26    # "fromDiv":Ljava/lang/CharSequence;
    .end local v28    # "id":J
    .end local v34    # "rawLabelIds":Ljava/lang/String;
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x-thread://"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 849
    .local v16, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/html"

    const-string v19, "utf-8"

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLoaded:Z

    goto/16 :goto_0

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private buildFromDiv(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1301
    const-string v0, "<td><div onClick=\"contactSender(\'%s\', \'%s\')\" ><img class=\"presenceImg\"id=\"a:presence\" src=\"%s\"/></div></td><td align=\'left\' width=\'99%%\' onClick=\"toggleHeader(\'%s\')\" width=\"50\"><div class=\"fromDiv\"> %s </div></td>"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, p3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getPresenceImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->position()I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->colorizePersonal(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    return-object v0
.end method

.method private colorizePersonal(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<span style=\'color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "maxCharacters"    # I

    .prologue
    .line 947
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 948
    .local v2, "length":I
    if-ge v2, p1, :cond_0

    .line 962
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 950
    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 952
    .local v3, "realMax":I
    const-string v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 953
    .local v1, "index":I
    const-string v0, "\u2026"

    .line 954
    .local v0, "extension":Ljava/lang/String;
    if-ltz v1, :cond_1

    .line 956
    sub-int v4, v2, v1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 961
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .line 962
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 505
    sget-object v1, Lcom/google/android/talk/fragments/SearchChatResultFragment;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 507
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 510
    .end local p0    # "address":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private finish()V
    .locals 0

    .prologue
    .line 1135
    return-void
.end method

.method private getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1222
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getToAddresses()[Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCcAddresses()[Ljava/lang/String;

    move-result-object v4

    .line 1224
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastFromAddress:Ljava/lang/String;

    .line 1226
    array-length v0, v3

    if-lez v0, :cond_3

    move v0, v1

    .line 1227
    :goto_0
    array-length v5, v4

    if-lez v5, :cond_4

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHasCcAddresses:Z

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<div class=\"addressDiv\">"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1230
    if-eqz v0, :cond_0

    .line 1231
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mToHeading:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1233
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mHasCcAddresses:Z

    if-eqz v2, :cond_2

    .line 1234
    if-eqz v0, :cond_1

    .line 1235
    const-string v0, "<br/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCcHeading:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->addAddresses(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1239
    :cond_2
    const-string v0, "</div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v2

    .line 1226
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1227
    goto :goto_1
.end method

.method private getColor(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "senderPersonal"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCurrentColorMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1339
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1344
    .end local v0    # "result":Ljava/lang/String;
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1342
    .end local v1    # "result":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/google/android/talk/fragments/SearchChatResultFragment;->AUTHOR_COLORS:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/talk/fragments/SearchChatResultFragment;->AUTHOR_COLORS:[Ljava/lang/String;

    array-length v3, v3

    rem-int v3, p2, v3

    aget-object v0, v2, v3

    .line 1343
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mCurrentColorMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1344
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private getDisplayAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getUnencodedDisplayAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGmailAppName()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 859
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 861
    .local v0, "gmailInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v2, "com.google.android.gm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 865
    :goto_0
    if-nez v0, :cond_0

    .line 866
    const/4 v2, 0x0

    .line 869
    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 862
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getId(Ljava/lang/String;)J
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 362
    sget v0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->MESSAGE_PREFIX_LENGTH:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPresenceImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresenceEmail:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 979
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresenceEmail:Ljava/lang/String;

    .line 980
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccountId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfo(JLjava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    return-object v0
.end method

.method private getSenderPersonal(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 1
    .param p1, "messageCursor"    # Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    .prologue
    .line 1217
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getDisplayAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSnippet(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    .locals 2
    .param p1, "cursor"    # Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    .prologue
    .line 966
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getSnippet()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnencodedDisplayAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1177
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mEmailMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1179
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1189
    .end local p1    # "address":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1183
    .restart local p1    # "address":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    move-object p1, v1

    .line 1186
    goto :goto_0

    .line 1189
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getUnencodedSenderEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1198
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mEmailMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1200
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1210
    .end local p1    # "address":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1204
    .restart local p1    # "address":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move-object p1, v1

    .line 1207
    goto :goto_0
.end method

.method private launchReplyByChat(Ljava/lang/String;)V
    .locals 5
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastFromAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "emailReplyAddress":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imto://gtalk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 520
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->startActivity(Landroid/content/Intent;)V

    .line 521
    return-void
.end method

.method private launchReplyOrForward(ZLjava/lang/String;)V
    .locals 5
    .param p1, "forward"    # Z
    .param p2, "messageId"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 483
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "action"

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    invoke-direct {p0, p2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getId(Ljava/lang/String;)J

    move-result-wide v0

    .line 486
    .local v0, "id":J
    const-string v3, "in-reference-to"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 487
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    if-nez p1, :cond_0

    .line 489
    const-string v3, "to"

    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastFromAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    :cond_0
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 493
    invoke-virtual {p0, v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->startActivity(Landroid/content/Intent;)V

    .line 494
    return-void

    .line 483
    .end local v0    # "id":J
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private maybeGenerateSuperCollapse(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;Ljava/lang/StringBuilder;II)V
    .locals 9
    .param p1, "messageCursor"    # Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "whichMessage"    # I
    .param p4, "firstCollapsed"    # I

    .prologue
    const/4 v7, 0x1

    .line 874
    invoke-virtual {p1}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->position()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 875
    .local v2, "lastCollapsed":I
    sub-int v5, v2, p4

    add-int/lit8 v0, v5, 0x1

    .line 876
    .local v0, "collapsedCount":I
    if-lt v0, v7, :cond_0

    .line 877
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_collapsed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "collapsedId":Ljava/lang/String;
    const-string v5, "<div id=\""

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v5, "\"><a onClick=\"uncollapse(\'"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v5, "\', "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 884
    const-string v5, ", "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    const-string v5, ")\"><div class=\"superCollapsedDiv size"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    sub-int v3, p3, p4

    .line 888
    .local v3, "readMessages":I
    if-ne v3, v7, :cond_1

    const-string v5, "1"

    :goto_0
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    const-string v5, "\"><div class=\"superCollapsedLabel\">"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d0000

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 892
    .local v4, "template":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const-string v5, "</div></div></a></div>"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .end local v1    # "collapsedId":Ljava/lang/String;
    .end local v3    # "readMessages":I
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 888
    .restart local v1    # "collapsedId":Ljava/lang/String;
    .restart local v3    # "readMessages":I
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const-string v5, "2"

    goto :goto_0

    :cond_2
    const-string v5, "n"

    goto :goto_0
.end method

.method public static restrictWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    const/4 v1, 0x0

    .line 652
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 653
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 654
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 655
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 656
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 657
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 658
    return-void
.end method

.method private showRetryAlert()V
    .locals 4

    .prologue
    .line 661
    new-instance v0, Lcom/google/android/talk/fragments/SearchChatResultFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$2;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 669
    .local v0, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/google/android/talk/fragments/SearchChatResultFragment$3;

    invoke-direct {v1, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$3;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 676
    .local v1, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c00a2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a3

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 681
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 645
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 568
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 570
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/SearchActivity;

    .line 572
    .local v1, "activity":Lcom/google/android/talk/SearchActivity;
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 577
    .local v12, "s":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v11, "loading":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 579
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 581
    .local v8, "c":C
    const/16 v0, 0x7e

    if-gt v8, v0, :cond_0

    .line 582
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 578
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 588
    .end local v8    # "c":C
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->restrictWebView(Landroid/webkit/WebView;)V

    .line 591
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 595
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 596
    .local v9, "extras":Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    .line 597
    const-string v0, "accountId"

    invoke-virtual {v9, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccountId:J

    .line 598
    const-string v0, "thread-id"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    .line 600
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 604
    invoke-virtual {v1}, Lcom/google/android/talk/SearchActivity;->getConversationId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    .line 607
    :cond_3
    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v7

    .line 608
    .local v7, "app":Lcom/google/android/talk/TalkApp;
    invoke-virtual {v7}, Lcom/google/android/talk/TalkApp;->getGmailProvider()Lcom/google/android/talk/GmailProviderWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mConversationId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/talk/GmailProviderWrapper;->getMessageCursorForConversationId(Ljava/lang/String;J)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    .line 612
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/talk/SearchActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 614
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<h3><p align=\"center\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</p></h3>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v0, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$ConversationContentObserver;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 620
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 622
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;

    invoke-direct {v2, p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;-><init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    const-string v3, "gmail"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    if-eqz p1, :cond_4

    .line 627
    const-string v0, "webview-y"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I

    .line 631
    :cond_4
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    .line 632
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_2
    return-void

    .line 633
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onContactInfoLoaded()V
    .locals 2

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->getPresenceStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1386
    const-string v0, "file:///android_asset/presence_offline.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    .line 1389
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresencePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mLastPresencePath:Ljava/lang/String;

    .line 1391
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V

    .line 1393
    :cond_0
    return-void

    .line 1365
    :pswitch_0
    const-string v0, "file:///android_asset/presence_online.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1369
    :pswitch_1
    const-string v0, "file:///android_asset/presence_away.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1373
    :pswitch_2
    const-string v0, "file:///android_asset/presence_away.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1377
    :pswitch_3
    const-string v0, "file:///android_asset/presence_busy.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1381
    :pswitch_4
    const-string v0, "file:///android_asset/presence_invisible.png"

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mPresencePath:Ljava/lang/String;

    goto :goto_0

    .line 1363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 560
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 561
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 562
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    .line 563
    iget-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;

    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1147
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1148
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1151
    :cond_0
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPause() finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 1110
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1111
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    if-eqz v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->count()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getStatus()Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    move-result-object v2

    sget-object v3, Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;->LOADING:Lcom/google/android/talk/GmailProviderWrapper$CursorStatus;

    if-eq v2, v3, :cond_1

    .line 1117
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V

    .line 1131
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1122
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v1

    .line 1123
    .local v1, "success":Z
    if-nez v1, :cond_2

    .line 1125
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V

    goto :goto_0

    .line 1128
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1139
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1140
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    if-eqz v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment;->mContactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->cleanupContactInfoCursor()V

    .line 1143
    :cond_0
    return-void
.end method
